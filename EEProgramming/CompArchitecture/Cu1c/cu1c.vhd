-------------------------------------------------------------------------------
-- EE375 Control Unit Style FSM1C for MARC2 Processor
-- Author:  *****Your name here!!*****
-- Date:  
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity cu1c is
  port( clk, rst, run, N, Z: IN std_logic;	
        Mem_rd, Mem_wr, R_we, ld_op, st_op: OUT std_logic; 
        ctl_wd: OUT std_logic_vector(14 downto 0); 
        const_out: OUT  std_logic_vector(15 downto 0); 
        CU_addr_bus: OUT std_logic_vector(15 downto 0);
        CU_data_bus: INOUT std_logic_vector(15 downto 0));
end cu1c;

architecture behavior of cu1c is
  -- Control Unit states for multi-cycle instruction execution
  type states is (Reset, Fetch, Decode, Execute, Memory, WriteBack);
  -- Instruction set operations
  type operations is (call, sethi, bz, bn, ba, addi, ret, hlt, st, ld,
                      sllx, srlx, notx, andx, addx, jmp, orx, subx, nop);
  -- Declare your internal signals here
  signal CurrState, NextState : states;
  signal CurrOp, NextOp : operations;
  signal CurrPC, CurrSP, CurrIR, CurrOffset : std_logic_vector(15 downto 0);
  signal NextPC, NextSP, NextIR, NextOffset : std_logic_vector(15 downto 0);
  signal CurrStatus, NextStatus : std_logic_vector(1 downto 0); --condition register
  signal PCa_EN, SP_EN, PCd_EN : std_logic;				 	    --tristate enable bits 
  constant highZ: std_logic_vector(15 downto 0) := (others => 'Z');
  signal PCSP: std_logic_vector(1 downto 0);
begin
  -- Wire tri-state buffers
  PCSP<= PCa_En & SP_EN;
  with PCSP select  CU_addr_bus <=
		CurrPC when "10",
		CurrSP when "01",
		highZ when others;
	
	with PCd_En select CU_data_bus <=
		CurrPC when '1',
		highZ when others;

  
  -- Implement your Control Unit as a state machine with combined next state and
  -- output logic but separate current state logic (state registers) 
  CombLogic : process(CurrState, run, CurrPC, CurrSP, CurrIR, CurrOp, CurrStatus, 
                      CurrOffset, cu_data_bus, N, Z)
  begin
  case CurrState is
    when Reset =>   -------------------------RESET-------------------------
      NextPC <= X"0080"; NextSP <= X"7FFE"; NextIR <= (others=>'0');--?
      NextOffset <= (others=>'0'); NextStatus <= "00"; 
      mem_rd <= '1'; mem_wr <= '0'; nextOp<= CurrOp;        
      R_we <= '0'; ld_op <= '0'; st_op <= '0';  
      ctl_wd <= (others=>'0'); const_out <= (others=>'0');
      PCa_EN <= '1'; SP_EN <= '0'; PCd_EN <= '0';
      if (run = '0' or CurrOp = hlt) then NextState <= Reset;  
      else NextState <= Fetch; 
      end if;--nop

    -- Put additional states here.  Be sure to assign every output signal in
    -- every possible path so as to keep this as a combinational logic process
    -- with no inferred latches.
	 when Fetch =>--nextSP
		NextPC <= CurrPC+1; NextOffset <= x"0000";NextSP<=CurrSP;
		NextIR <= CU_data_bus; --here or dec
		NextStatus <= CurrStatus; mem_rd <= '1'; mem_wr <= '0';
		nextOp<= CurrOp; R_we <= '0'; ld_op <= '0'; st_op <= '0';  
      ctl_wd <= (others=>'0'); const_out <= (others=>'0');
      PCa_EN <= '1'; SP_EN <= '0'; PCd_EN <= '0';
      --if (run = '0' or CurrOp = hlt) then NextState <= Reset;  --run not needed, only for halt
      NextState <= Decode; 


	 when Decode =>
		PCa_EN<= '0';  NextIR <=CurrIR;
		NextPC <= CurrPC; NextStatus <= CurrStatus;st_op <= '0';  
		
		if (CurrIR(15)= '1') then 
			nextOp <= call; PCd_EN <= '1';nextSP <= currSP;
			SP_EN <= '1';  mem_wr <='1'; mem_rd<= '0'; ctl_wd <= (others=>'0');
			NextOffset <= CurrOffset; R_we <= '0'; ld_op <= '0'; const_out <= (others=>'0');
		elsif (CurrIR(15 downto 14)= "00") then 
			PCd_EN <= '0';const_out <= (others=>'0');
			nextSP <= currSP; NextOffset <= CurrOffset;
			mem_wr <= '0'; SP_EN <= '0';
			if (CurrIR(10 downto 7) = x"9") then 
				mem_rd<= '0';nextOp <= subx; R_we <= '1';
				ctl_wd <= "00" & CurrIR(13 downto 1);ld_op <= '0';
			elsif(CurrIR(10 downto 7) = x"8") then 
				mem_rd<= '0'; nextOp <= orx; R_we <= '1';
				ctl_wd <= "00" & CurrIR(13 downto 1);ld_op <= '0';
			elsif(CurrIR(10 downto 7) = x"7") then 
				mem_rd<= '0'; nextOp <= jmp; r_we<='0';
				ctl_wd <= "00" & CurrIR(13 downto 1); ld_op <= '0';
			elsif(CurrIR(10 downto 7) = x"6") then 
				mem_rd<= '0'; nextOp <= addx; R_we <= '1';
				ctl_wd <= "00" & CurrIR(13 downto 1);ld_op <= '0';
			elsif(CurrIR(10 downto 7) = x"5") then 
				mem_rd<= '0'; nextOp <= andx;R_we <= '1';
				ctl_wd <= "00" & CurrIR(13 downto 1);ld_op <= '0';
			elsif(CurrIR(10 downto 7) = x"4") then 
				mem_rd<= '0'; nextOp <= notx;R_we <= '1';
				ctl_wd <= "00" & CurrIR(13 downto 1);ld_op <= '0';
			elsif(CurrIR(10 downto 7) = x"3") then 
				mem_rd<= '0'; nextOp <= srlx;R_we <= '1';
				ctl_wd <= "00" & CurrIR(13 downto 1);ld_op <= '0';
			elsif(CurrIR(10 downto 7) = x"2") then 
				mem_rd<= '0'; nextOp <= sllx;R_we <= '1';
				ctl_wd <= "00" & CurrIR(13 downto 1);ld_op <= '0';
			elsif(CurrIR(10 downto 7) = x"1") then 
				nextOp <= ld; ld_op <= '1'; ctl_wd <= "10" & CurrIR(13 downto 1);
				R_we <= '0'; mem_rd<= '1';
			elsif(CurrIR(10 downto 7) = x"0") then 
				mem_rd<= '0'; nextOp <= st;  R_we <= '0';
				ctl_wd <= "00" & CurrIR(13 downto 1);	ld_op <= '0';
			else nextOp <= nop;  R_we <= '0'; ld_op <= '0';
				ctl_wd <= "00" & CurrIR(13 downto 1);mem_rd<='0';
			end if;
		else --(CurrIR(15 downto 14)= "01") 
			mem_rd<= '0'; mem_wr <= '0';  ld_op <= '0';
			SP_EN <= '0';PCd_EN <= '0';
			if (CurrIR(10 downto 8) = "001") then
				nextOffset <= x"00" &CurrIR(7 downto 0); ctl_wd <= (others=>'0');
				nextOp <= ret; NextSp <= CurrSP +1;R_we <= '0'; const_out <= (others=>'0');
			elsif (CurrIR(10 downto 8) = "011") then 
				nextOffset <= currOffset; 
				if (CurrIR(7)='0') then const_out<= x"00" &CurrIR(7 downto 0); 
				else const_out<= x"FF" &CurrIR(7 downto 0);
				end if;
				NextOp <= addi; nextSP <= currSP; R_we <= '0'; 
				ctl_wd <= CurrIr(15 downto 11) & "0110"& CurrIR(13 downto 8);-------------
			elsif (CurrIR(10 downto 8) = "100") then 
				R_we <= '0'; const_out <= (others=>'0');
				if(currIR(7)='1') then nextOffset <= x"FF" &CurrIR(7 downto 0);
				else nextOffset <= x"00" &CurrIR(7 downto 0); 
				end if;
				NextOp <= ba;  nextSP <= currSP; ctl_wd <= (others=>'0');
			elsif (CurrIR(10 downto 8) = "101") then
				nextOffset <= x"00" &CurrIR(7 downto 0); ctl_wd <= (others=>'0');
				NextOp <= bn; nextSP <= currSP;R_we <= '0'; const_out <= (others=>'0');
			elsif (CurrIR(10 downto 8) = "110") then
				nextOffset <= x"00" &CurrIR(7 downto 0); const_out <= (others=>'0');
				NextOp <= bz;nextSP <= currSP;R_we <= '0'; ctl_wd <= (others=>'0');
			elsif (CurrIR(10 downto 8) = "111") then NextOp <= sethi; 
				ctl_wd <= "01" & CurrIR(13 downto 11)& "0111000000";
				R_we <= '1'; const_out<= CurrIR(7 downto 0)& X"00";
				nextSP <= currSP; nextOffset <= x"00" &CurrIR(7 downto 0);
			else NextOp <= hlt; nextSP <= currSP; R_we <= '0'; 
				nextOffset <= x"00" &CurrIR(7 downto 0);
				const_out <= (others=>'0'); ctl_wd <= (others=>'0');
			end if;
		end if;
		if (CurrOp = hlt) then NextState <= Reset;  
      else NextState <= Execute; 
      end if;
      
	
	 when Execute =>
	 
		NextIR <= CurrIR; 
      NextOffset <= CurrOffset;nextOp<= CurrOp;  
      PCa_EN <= '0';NextStatus<= N&Z;
		if (CurrIR(15)= '1') then 
			NextPC <= '0' & CurrIR(14 downto 0);mem_wr <= '1';const_out<= (others=>'0'); 
			--M[SP] <-  CurrPC
			NextSP <= CurrSP -1; mem_rd <= '0';R_we <= '0';ctl_wd <= (others=>'0');
			st_op <= '0';ld_op <= '0';SP_EN <= '1'; PCd_EN <= '1';
		elsif (CurrIR(15 downto 14)= "00") then 
			NextSP <= CurrSP;PCd_EN <= '0';SP_EN <= '0';const_out<= (others=>'0'); 
			if(currOp = st) then st_op <= '1'; mem_wr <= '1'; mem_rd <= '0';NextPC<= CurrPC;
			ctl_wd <= "00" & CurrIR(13 downto 1);ld_op <= '0';R_we <= '0';
			elsif(currOp= ld) then  ld_op <= '1' ;mem_rd <= '1'; NextPC<= CurrPC;
			ctl_wd <= "10" & CurrIR(13 downto 1);st_op <= '0';mem_wr <= '0';R_we <= '1';
			elsif(CurrOP=jmp) then NextPC<= CU_data_bus; st_op<='1'; mem_wr <= '0'; 
			mem_rd <= '0';ld_op <= '0'; R_we <= '0';ctl_wd <= "00" & CurrIR(13 downto 1);
			else NextPC<= CurrPC; st_op <= '0';mem_wr <= '0'; mem_rd <= '0';
			ld_op <= '0';R_we <= '0'; ctl_wd <= "00" & CurrIR(13 downto 1);
			end if;
		else --(CurrIR(15 downto 14)= "01")   
			NextSP <= CurrSP; mem_wr <= '0'; st_op <= '0'; 
			ld_op <= '0';PCd_EN <= '0';
			if (currOp = ret) then mem_rd <= '1'; Sp_En<='1';
				NextPC <= CurrPC;R_we <= '0';ctl_wd <= (others=>'0');const_out<= (others=>'0'); 
			elsif (currOp = addi) then R_we <= '1'; SP_EN <= '0';
				if (CurrIR(7)='0') then const_out<= x"00" &CurrIR(7 downto 0); 
				else const_out<= x"FF" &CurrIR(7 downto 0);
				end if;
				NextPC <= CurrPC; mem_rd <= '0';mem_wr <= '0';
				ctl_wd <= CurrIr(15 downto 11) & "0110"& CurrIR(13 downto 8);
			elsif (currOp = ba) then NextPC <= CurrPC +CurrOffset;
				mem_rd <= '0';R_we <= '0';mem_wr <= '0';
				const_out<= (others=>'0'); SP_EN <= '0';ctl_wd <= (others=>'0');
			elsif (currOp = bn) then
				mem_rd <= '0';R_we <= '0';mem_wr <= '0';
				const_out<= (others=>'0'); SP_EN <= '0';ctl_wd <= (others=>'0');
				if(currStatus(1)='1') then NextPC <= CurrPC +CurrOffset;--n,z
				else NextPC <= CurrPC;
				end if;
			elsif (currOp = bz) then 
				mem_rd <= '0';R_we <= '0';mem_wr <= '0'; SP_EN <= '0';
				ctl_wd <= (others=>'0');const_out<= (others=>'0'); 
				if(currStatus(0)= '1') then NextPC <= CurrPC +CurrOffset;
				else NextPC <= CurrPC;
				end if;
			elsif (currOp = sethi) then 
				ctl_wd <= "01" & CurrIR(13 downto 11)& "0111000000";
				const_out<= CurrIR(7 downto 0)& X"00";
				NextPC <= CurrPC;mem_rd <= '0';R_we <= '1';mem_wr <= '0';
				SP_EN <= '0';
			else 
				ctl_wd <= (others=>'0');const_out<= (others=>'0'); 
				NextPC <= CurrPC;mem_rd <= '1';R_we <= '0';mem_wr <= '0';
				SP_EN <= '0';
			end if;
		end if;
		if (CurrOp = hlt) then NextState <= Reset;  
      else NextState <= Memory; 
      end if;
		 
		
	 when Memory =>
		NextSP <= CurrSP; NextIR <= CurrIR;
      NextOffset <= CurrOffset; nextOp<= CurrOp;        
      st_op <= '0';  ctl_wd <= (others=>'0');
      PCa_EN <= '0'; SP_EN <= '0'; PCd_EN <= '0';
		NextStatus<= CurrStatus; const_out <= (others=>'0');
		if(currOp= st or CurrOp= call)then mem_wr<='1';
		else mem_wr<='0';
		end if;
		if(currOp = ret) 
			then NextPC <= CU_data_bus; sp_En<='1';
		else NextPC <= CurrPC;
		end if;
		if(CurrOp= ld) then r_we <= '0';ld_op <= '1'; mem_rd<='1';
		elsif(currOp= ret)then r_we <= '0';ld_op <= '0'; mem_rd <= '1';
		else r_we <= '0';ld_op <= '0'; mem_rd <= '0';
		end if;
		if (CurrOp = hlt) then NextState <= Reset;  
      else NextState <= WriteBack; 
      end if;
     
	
	 when WriteBack =>
		NextSP <= CurrSP; NextIR <= CurrIR;
      NextOffset <= CurrOffset; NextStatus <= CurrStatus; 
      nextOp<= CurrOp;  const_out <= (others=>'0');
      mem_rd <= '1'; mem_wr <= '0';  ctl_wd <= (others=>'0');       
      R_we <= '0'; ld_op <= '0'; st_op <= '0'; NextPC <= CurrPC;
      PCa_EN <= '1'; SP_EN <= '0'; PCd_EN <= '0';
		if (CurrOp = hlt) then NextState <= Reset;  
      else NextState <= Fetch; 
      end if;
      	
	 when others => NextPC <= X"0080";
    end case;
  end process CombLogic;			 

  Regs : process(clk,rst)
  begin
	  if rst='0' then CurrState<=Reset;  -- Active Low Reset
		 CurrOp <= sethi; CurrPC <= x"0080"; CurrSP <= x"7FFE"; 
		 CurrIR <= (others=>'0'); CurrOffset <= (others =>'0'); CurrStatus <= "00"; 
	  elsif (rising_edge(clk)) then CurrState <= NextState; 
		 CurrPC <= NextPC; CurrSP <= NextSP; CurrIR <= NextIR; 
		 CurrOp <= NextOp; CurrOffset <= NextOffset; CurrStatus <= NextStatus;
	  end if;
  end process Regs;		
end behavior;

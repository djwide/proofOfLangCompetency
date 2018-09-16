library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CPU is
    Port( clk : in std_logic;
          reset : in std_logic;    
          run : in std_logic; 
			 mem_wr,mem_rd: out std_logic;
			 address: Out STD_LOGIC_VECTOR(15 DOWNTO 0);
			 R0Out,R1Out,R2Out,R3Out,R4Out,R5Out,R6Out,R7Out: OUT STD_LOGIC_Vector(15 downto 0);
          data : INOUT	STD_LOGIC_VECTOR(15 DOWNTO 0));
end CPU;

architecture arc of CPU is

	COMPONENT cu1c is
	  port( clk, rst, run, N, Z: IN std_logic;	
			  Mem_rd, Mem_wr, R_we, ld_op, st_op: OUT std_logic; 
			  ctl_wd: OUT std_logic_vector(14 downto 0); 
			  const_out: OUT  std_logic_vector(15 downto 0); 
			  CU_addr_bus: OUT std_logic_vector(15 downto 0);
			  CU_data_bus: INOUT std_logic_vector(15 downto 0));
	end component;

	COMPONENT datapath IS
	  PORT( clk: IN std_logic; 	    -- clock	
			  rst : IN STD_LOGIC;		
			  rWE: IN std_logic;      -- register file & flag write enable
			  ld_op: IN std_logic;	-- op is load (from control unit)
			  st_op: IN std_logic; 	-- op is store (from control unit)
			  ctlWd: IN  std_logic_vector(14 downto 0);    -- control word
			  const_in: IN  std_logic_vector(15 downto 0); -- data from control unit
			  N: OUT std_logic; 	-- negative flag (N=1, sign of result is neg)
			  Z: OUT std_logic; 	-- zero flag (Z=1, result of Func Unit is 0)
			  R0out,R1out,R2out,R3out, R4out,R5out,R6out,R7out: OUT std_logic_vector(15 downto 0);
			  dp_addr_bus: OUT std_logic_vector(15 downto 0);    -- address to memory
			  dp_data_bus: INOUT std_logic_vector(15 downto 0)); -- data to/from memory
	END component;
	
	SIGNAL RW, N, Z, LD, ST :STD_LOGIC;
	SIGNAL CNTLWD: STD_LOGIC_VECTOR(14 downto 0);
	SIGNAL CNST: STD_LOGIC_VECTOR(15 downto 0);
	
	Begin
		DPath: datapath port map(clk, reset,RW, LD, ST,	
										CNTLWD,cnst, N,Z, R0out,
										R1out,R2out,R3out, R4out,
										R5out,R6out,R7out, address,
										data);
		CU: cu1c port map(clk, reset, run, N, Z, mem_rd, mem_wr, 
								RW, LD, ST, CNTLWD, cnst, address, data); 
	
end arc;
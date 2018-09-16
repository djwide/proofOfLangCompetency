-------------------------------------------------------------------------------
-- EE375 Testbench for 1C MARC2 Control Unit
-- Author:  MAJ Julianna Rodriguez
-- Date Modified:  20150124
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CU1C_vhd_tst is
end CU1C_vhd_tst;

architecture tests of CU1C_vhd_tst is
  component cu1c is
    port( clk, rst, run, N, Z: IN std_logic;	
          Mem_rd, Mem_wr, R_we, ld_op, st_op: OUT std_logic; 
          ctl_wd: OUT std_logic_vector(14 downto 0); 
          const_out: OUT  std_logic_vector(15 downto 0); 
          CU_addr_bus: OUT std_logic_vector(15 downto 0);
          CU_data_bus: INOUT std_logic_vector(15 downto 0));
  end component;
  
  signal clk, rst, run, n, z : std_logic;
  constant clkPeriod : time := 10 ns;
  signal Mem_rd, Mem_wr, R_we, ld_op, st_op: std_logic; 
  signal ctl_wd: std_logic_vector(14 downto 0); 
  signal const_out: std_logic_vector(15 downto 0); 
  signal CU_addr_bus: std_logic_vector(15 downto 0);
  signal CU_data_bus: std_logic_vector(15 downto 0);
  
begin
  dut : cu1c PORT MAP(clk => clk, rst => rst, run => run, N => n, Z => z, 
                       Mem_rd => Mem_rd, Mem_wr => Mem_wr,
                       R_we => R_we, ld_op => ld_op, st_op => st_op,
                       ctl_wd => ctl_wd, const_out => const_out, 							  
                       CU_addr_bus => CU_addr_bus, CU_data_bus => CU_data_bus);

  clkProcess : PROCESS
  BEGIN
    clk <= '1'; wait for clkPeriod/2; 
    clk <= '0'; wait for clkPeriod/2;
  END PROCESS clkProcess;	

  init : PROCESS                                               
  BEGIN                                                        
    --reset the system: PC = x0080, SP = x04FE
    rst <= '0'; run <= '0'; N <= '0'; Z <= '0'; 
    cu_addr_bus <= (others=>'Z'); cu_data_bus <= (others=>'Z');
    wait for 10 ns;
    --------------------------------------------------
    --test run input, should stay in reset state
    rst <= '1'; run <= '0'; N <= '0'; Z <= '0'; cu_data_bus <= x"4FC1";
    wait for 20 ns;
    --------------------------------------------------
    --test fetch state:   sethi R1, xC1
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= x"4FC1";
    wait for 20 ns;
  
    --test decode state:  IR = x4FC1
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= (others=>'Z');
    wait for 10 ns;
		  
    --test execution state: OP = sethi 
    rst <= '1'; run <= '1'; N <= '1'; Z <= '0';   
    wait for 10 ns;
  
    --test memory state: status register should be showing N as high
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0';   
    wait for 10 ns;
		  
    --test write-back state: cu_addr_bus = x0081
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0';   
    wait for 10 ns;
    --------------------------------------------------
    --test operation:    Branch (add 2 to next PC) if Negative
    --Need to have captured N in status reg from previous execute state input
    --bn:  Fetch
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= X"4502";
    wait for 10 ns;
    --bn:  Decode
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= (others=>'Z');
    wait for 10 ns;
    --bn:  Execute --- SE offset provides an operand of x0002 to add to next PC
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0';   
    wait for 10 ns;
    --bn:  Memory --- PC is assigned x0084
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0';   
    wait for 10 ns;
    --bn:  WB --- x0084 goes out on the address bus for the next instruction
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0';   
    wait for 10 ns;
    --------------------------------------------------
    --test operation:   addx r7, r1, r2
    --How do you know if this works correctly?  
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= X"3B14";
    wait for 10 ns;

    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= (others=>'Z');
    wait for 40 ns;
    --------------------------------------------------
    --test operation:   st M[r1], r7
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= X"0870";
    wait for 10 ns;

    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= (others=>'Z');
    wait for 40 ns;
    --------------------------------------------------
    --test operation:   call: PC <-- x0300
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= X"8300";
    wait for 10 ns;

    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= (others=>'Z');
    wait for 40 ns;
    --------------------------------------------------
    --test operation:   ld r3, M[r1]
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= X"1890";
    wait for 10 ns;
  
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= (others=>'Z');  
    wait for 10 ns;
  
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_addr_bus <= X"0510";  
    wait for 10 ns;  

    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; 
    cu_addr_bus <= X"0510";  cu_data_bus <= X"FF00";
    wait for 10 ns;  
  
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; 
    cu_addr_bus <= (others=>'Z'); cu_data_bus <= (others=>'Z');
    wait for 10 ns; 
    --------------------------------------------------
    --test operation:   ret
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= X"4100";
    wait for 10 ns;
  
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= (others=>'Z');  
    wait for 10 ns;
  
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0';  
    wait for 10 ns;  

    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= X"0087";
    wait for 10 ns;  
  
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; 
    cu_data_bus <= (others=>'Z');
	wait for 10 ns;
    --------------------------------------------------
    --test operation:   hlt
    rst <= '1'; run <= '1'; N <= '0'; Z <= '0'; cu_data_bus <= X"4000";    	
    wait;                                                     
  END PROCESS init;     					
end tests;
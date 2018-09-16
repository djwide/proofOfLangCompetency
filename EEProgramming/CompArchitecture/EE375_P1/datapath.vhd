-------------------------------------------------------------------------------
-- EE375 Datapath for MARC2 Processor
-- Author:         ***Put your name here***
-- Date Modified:  ***Date of last modification***
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY datapath IS
  PORT( clk: IN std_logic; 	    -- clock	
        reset : IN STD_LOGIC;		
        rWE: IN std_logic;      -- register file & flag write enable
        ld_op: IN std_logic;	-- op is load (from control unit)
        st_op: IN std_logic; 	-- op is store (from control unit)
        ctlWd: IN  std_logic_vector(14 downto 0);    -- control word
        const_in: IN  std_logic_vector(15 downto 0); -- data from control unit
        N: OUT std_logic; 	-- negative flag (N=1, sign of result is neg)
        Z: OUT std_logic; 	-- zero flag (Z=1, result of Func Unit is 0)
        R0out,R1out,R2out,R3out: OUT std_logic_vector(15 downto 0);
        R4out,R5out,R6out,R7out: OUT std_logic_vector(15 downto 0);
        dp_addr_bus: OUT std_logic_vector(15 downto 0);    -- address to memory
        dp_data_bus: INOUT std_logic_vector(15 downto 0)); -- data to/from memory
END datapath;

ARCHITECTURE DPArch OF datapath IS
------------------------------------------------------------------------------- 
-- control word format
--      |cw(14)|cw(13)|cw(12-10)|cw(9-6)|cw(5-3)|cw(2-0)| 
--      |  MD  |  MB  |  selD   |  FS   |  selA |  selB |
-------------------------------------------------------------------------------
  -- component declarations

  -- signal declarations

  
BEGIN 

	
END DPArch;
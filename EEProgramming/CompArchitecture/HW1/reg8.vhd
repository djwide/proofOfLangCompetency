-- 8 bit Register
-- Author: MAJ Julianna Rpdriguez
-- Date Modified:  20150103
-- Purpose: Store an 8 bit value with an asynchronous reset and a write enable

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY reg8 IS
  PORT( dataIn : IN std_logic_vector(7 downto 0);
        r_we, clk, rst : IN std_logic;
        dataOut : OUT std_logic_vector(7 downto 0)); 
END reg8;

ARCHITECTURE behavior OF reg8 IS
    SIGNAL data : std_logic_vector(7 downto 0);
BEGIN
    holdValue : PROCESS (clk, rst)
    BEGIN
      IF rst='0' THEN	
        data <= (OTHERS=>'0');
      ELSIF rising_edge(clk) THEN	
        IF r_we='1' THEN
          data <= dataIn;
        END IF;
      END IF;
    END PROCESS holdValue;
    dataOut <= data;
END behavior;

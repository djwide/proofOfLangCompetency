-- 2x4 Decoder
-- Author: MAJ Julianna Rpdriguez
-- Date Modified:  20150103
-- Purpose: Activate one of four outputs based on incoming two bit signal

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decode2x4 IS
  PORT( en : IN std_logic;
        addr : IN std_logic_vector(1 DOWNTO 0);
        d3,d2,d1,d0 : OUT std_logic);
END decode2x4;

ARCHITECTURE behav OF decode2x4 IS
BEGIN
    d3 <= '1' WHEN (addr="11" and en='1') ELSE '0';
    d2 <= '1' WHEN (addr="10" and en='1') ELSE '0';
    d1 <= '1' WHEN (addr="01" and en='1') ELSE '0';
    d0 <= '1' WHEN (addr="00" and en='1') ELSE '0';
END behav;

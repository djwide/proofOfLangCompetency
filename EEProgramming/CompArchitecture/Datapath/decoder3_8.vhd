LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decoder3_8 is
  PORT( rWE : IN std_logic;
        addr : IN std_logic_vector(2 DOWNTO 0);
        d7,d6,d5,d4, d3,d2,d1,d0 : OUT std_logic);
end decoder3_8;

Architecture arc of decoder3_8 is
BEGIN
    d7 <= '1' WHEN (addr="111" and rWE='1') ELSE '0';
    d6 <= '1' WHEN (addr="110" and rWE='1') ELSE '0';
    d5 <= '1' WHEN (addr="101" and rWE='1') ELSE '0';
    d4 <= '1' WHEN (addr="100" and rWE='1') ELSE '0';
    d3 <= '1' WHEN (addr="011" and rWE='1') ELSE '0';
    d2 <= '1' WHEN (addr="010" and rWE='1') ELSE '0';
    d1 <= '1' WHEN (addr="001" and rWE='1') ELSE '0';
    d0 <= '1' WHEN (addr="000" and rWE='1') ELSE '0';
END arc;
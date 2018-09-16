LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux2_1 is
	PORT(a,b: IN std_logic_vector(15 downto 0);
			s: IN std_logic;
			y: out std_logic_vector(15 downto 0));
end mux2_1;

Architecture arc of mux2_1 is
begin
	with s Select
		y<= b when '1',
			 a when '0',
			 x"0000" when others;
end arc;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux8_1 is
	PORT(a,b,c,d,e,f,g,h: IN std_logic_vector(15 downto 0);--a=0, h=7
			s: IN std_logic_vector(2 downto 0);
			y: out std_logic_vector(15 downto 0));
end mux8_1;

Architecture arc of mux8_1 is
begin
	with s Select
		y<= h when "111",
			 g when "110",
			 f when "101",
			 e when "100",
			 d when "011",
			 c when "010",
			 b when "001",
			 a when "000",
			 x"0000" when others;
end arc;
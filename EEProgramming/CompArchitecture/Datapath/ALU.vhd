LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ALU is
	PORT(A,B: IN std_logic_vector(15 downto 0);
			sel: IN std_logic_vector(3 downto 0);
			F: buffer std_logic_vector(15 downto 0);
			Z, N: OUT std_logic);
end ALU;

Architecture arc of ALU is

	--had these convoluted components lying around from ee360
	component adder is
		port(vec1, vec2: in std_logic_vector(15 downto 0);
			  xtra: out std_logic;
			  vecOut :out std_logic_vector(15 downto 0));
	end component;
	
	component subtracter is
		port(svec1, svec2: in std_logic_vector(15 downto 0);
			  sxtra: out std_logic;
			  svecOut :out std_logic_vector(15 downto 0));
	end component;
	
	signal x: std_logic;
	signal add, sub : std_logic_vector(15 downto 0);
begin
	Z <= '1' when F=x"0000" else '0';
	N <= '1' when F(15) = '1' else '0';
	addr : adder port map (A,B, x, add);
	subt: subtracter port map(A,B,x, sub);
	with sel Select
		F<= A when "0001",
			 A(14 downto 0) & '0' when "0010",
			 '0' & A(15 downto 1) when "0011",
			 not A when "0100",
			 A and B when "0101",
			 add when "0110",  
			 B when "0111",
			 A or B when "1000",
			 sub when "1001",
			 "ZZZZZZZZZZZZZZZZ" when "0000",
			 (others => '0') when others;
end arc;

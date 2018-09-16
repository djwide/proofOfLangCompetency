library ieee;
use ieee.std_logic_1164.all;

entity subtracter is
	port(svec1, svec2: in std_logic_vector(15 downto 0);
		  sxtra: out std_logic;
		  svecOut :out std_logic_vector(15 downto 0));
end entity;


Architecture func of subtracter is  
	component adder is
	port(vec1, vec2: in std_logic_vector(15 downto 0);
		  xtra: out std_logic;
		  vecOut :out std_logic_vector(15 downto 0));
	end component;
	
	component complimenter is
	port(cvecIn: in std_logic_vector(15 downto 0);
		  cvecOut :out std_logic_vector(15 downto 0));
	end component;
	
	signal vecTemp1, vecTemp2: std_logic_vector(15 downto 0);
	signal xtraTemp1, xtraTemp2: std_logic;
	
	begin 
		comp: complimenter port map(svec2,  vecTemp1);
		add1: adder port map(vecTemp1, x"0001", xtraTemp1, vecTemp2);
		add2: adder port map(svec1, vecTemp2, xtraTemp2, svecOut);
		
end func;

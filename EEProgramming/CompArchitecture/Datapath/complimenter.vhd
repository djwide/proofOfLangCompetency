library ieee;
use ieee.std_logic_1164.all;

entity complimenter is
	port(cvecIn: in std_logic_vector(15 downto 0);
		  cvecOut :out std_logic_vector(15 downto 0));
end entity;


Architecture func of complimenter is  
	begin 
		cvecOut <= not cvecIn;
end func;

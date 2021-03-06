
library IEEE;
use IEEE.std_logic_1164.all;

entity triStateBuffer is 
	port(A: in Std_logic_vector(15 downto 0);
	A_En: in STD_Logic;
	F: out Std_logic_vector(15 downto 0));
end triStateBuffer;

architecture arc of triStateBuffer is
	constant highZ: std_logic_vector(15 downto 0) := (others => 'Z');
	
begin 
	F <= A when A_En= '1' else highZ;

end arc;
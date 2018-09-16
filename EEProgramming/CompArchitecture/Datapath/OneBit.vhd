library ieee;
use ieee.std_logic_1164.all;

entity OneBit is
	port(x1, x2, vIn: in std_logic;
		y,	vOut: out std_logic);
end OneBit;

Architecture func of OneBit is  
	begin 
		y <= x1 xor x2 xor vIn;
		vOut <= (x1 and x2) or (x1 and vIn) or (x2 and vIn);

end func;

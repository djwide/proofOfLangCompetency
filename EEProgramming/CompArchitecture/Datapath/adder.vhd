library ieee;
use ieee.std_logic_1164.all;

entity adder is
	port(vec1, vec2: in std_logic_vector(15 downto 0);
		  xtra: out std_logic;
		  vecOut :out std_logic_vector(15 downto 0));
end adder;


Architecture func of adder is  
	component OneBit is
		port(x1, x2, vIn: in std_logic;
			  y,	vOut: out std_logic);
	end component;
	
	signal c: std_logic_vector(14 downto 0);
	
	begin 
		one: OneBit
			port map (vec1(0), vec2(0), '0', vecOut(0), c(0));
			
			 
		two: OneBit
			port map (vec1(1), vec2(1), c(0), vecOut(1), c(1));
			 
		three: OneBit
			port map (vec1(2), vec2(2), c(1), vecOut(2), c(2));
			 
		four: OneBit
			port map (vec1(3), vec2(3), c(2), vecOut(3), c(3));
			 
		five: OneBit
			port map (vec1(4), vec2(4), c(3), vecOut(4), c(4));
		
		six: OneBit
			port map (vec1(5), vec2(5), c(4), vecOut(5), c(5));
			 
		seven: OneBit
			port map (vec1(6), vec2(6), c(5), vecOut(6), c(6));
			 
		eight: OneBit
			port map (vec1(7), vec2(7), c(6), vecOut(7),c(7));
			
			 
		nine: OneBit
			port map (vec1(8), vec2(8), c(7), vecOut(8), c(8));
			 
		ten: OneBit
			port map (vec1(9), vec2(9), c(8), vecOut(9), c(9));
			 
		eleven: OneBit
			port map (vec1(10), vec2(10), c(9), vecOut(10), c(10));
			 
		twelve: OneBit
			port map (vec1(11), vec2(11), c(10), vecOut(11), c(11));
		
		thirteen: OneBit
			port map (vec1(12), vec2(12), c(11), vecOut(12), c(12));
			 
		fourteen: OneBit
			port map (vec1(13), vec2(13), c(12), vecOut(13), c(13));
			 
		fifteen: OneBit
			port map (vec1(14), vec2(14), c(13), vecOut(14), c(14));
			
		sixteen: OneBit
			port map (vec1(15), vec2(15), c(14), vecOut(15), xtra);
			
			
end func;


library ieee;
use ieee.std_logic_1164.all;
entity regFile is
	PORT( clk: IN std_logic; 	    
        rst : IN STD_LOGIC;		
        rWE: IN std_logic;    
		  dataIn: IN  std_logic_vector(15 downto 0);    
        ctlWd: IN  std_logic_vector(14 downto 0);  
        R0out,R1out,R2out,R3out,R4out,R5out,R6out,R7out: OUT std_logic_vector(15 downto 0);
        A_bus: OUT std_logic_vector(15 downto 0);   
        B_bus: INOUT std_logic_vector(15 downto 0)); 
end regFile;



ARCHITECTURE arc OF regFile IS
	component reg16 is
		PORT( dataIn : IN std_logic_vector(15 downto 0);
        r_we, clk, rst : IN std_logic;
        dataOut : OUT std_logic_vector(15 downto 0)); 
	end component;
	
	component mux8_1 is
		PORT(a,b,c,d,e,f,g,h: IN std_logic_vector(15 downto 0);--a=0, h=7
				s: IN std_logic_vector(2 downto 0);
				y: out std_logic_vector(15 downto 0));
	end component;
	
	component decoder3_8 is
	  PORT( rWE : IN std_logic;
			  addr : IN std_logic_vector(2 DOWNTO 0);
			  d7, d6, d5, d4, d3, d2, d1, d0 : OUT std_logic);
	end component;
	
	SIGNAL R7we,R6we,R5we,R4we,R3we,R2we,R1we,R0we : std_logic;
	SIGNAL R7data,R6data,R5data,R4data,R3data,R2data,R1data,R0data : std_logic_vector(15 DOWNTO 0);
	
BEGIN
	WrDec : decoder3_8 PORT MAP(rWE,ctlWd(12 downto 10),R7we,R6we,R5we,R4we,R3we,R2we,R1we,R0we);
	R7 : reg16 PORT MAP(dataIn,R7we,Clk,Rst,R7data);
	R6 : reg16 PORT MAP(dataIn,R6we,Clk,Rst,R6data);
	R5 : reg16 PORT MAP(dataIn,R5we,Clk,Rst,R5data);
	R4 : reg16 PORT MAP(dataIn,R4we,Clk,Rst,R4data);
	R3 : reg16 PORT MAP(dataIn,R3we,Clk,Rst,R3data);
	R2 : reg16 PORT MAP(dataIn,R2we,Clk,Rst,R2data);
	R1 : reg16 PORT MAP(dataIn,R1we,Clk,Rst,R1data);
	R0 : reg16 PORT MAP(dataIn,R0we,Clk,Rst,R0data);
	muxA: mux8_1 PORT MAP(R0data,R1data,R2data,R3data,R4data,R5data,R6data,R7data,ctlwd(5 downto 3),A_Bus);
	muxB: mux8_1 PORT MAP(R0data,R1data,R2data,R3data,R4data,R5data,R6data,R7data,ctlwd(2 downto 0),B_Bus);
	R7out <= R7data;
	R6out <= R6data;
	R5out <= R5data;
	R4out <= R4data;
	R3out <= R3data;
	R2out <= R2data;
	R1out <= R1data;
	R0out <= R0data;
end arc;
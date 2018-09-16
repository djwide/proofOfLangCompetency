--------------------------------------------------------------------------------------		
--	File:  LCDdisplay.vhd
--	Created by: MAJ Paul Maxwell
--	Modified by: MAJ Julianna Rodriguez
--	Date Last Modified:  20150217
-- 	Description:  This describes hardware to drive the DE2-115 LCD Display
-------------------------------------------------------------------------------------
LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY LCDdisplay IS
  PORT( reset, clk_50Mhz              : IN STD_LOGIC;
        LCD_RS, LCD_E, LCD_ON, rstLED : OUT STD_LOGIC;
        LCD_RW                        : BUFFER STD_LOGIC;
        display_data                  : IN STD_LOGIC_VECTOR(15 downto 0);
        DATA_BUS                      : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END LCDdisplay;

ARCHITECTURE decription OF LCDdisplay IS
	TYPE STATE_TYPE IS (HOLD, FUNC_SET, DISPLAY_ON, MODE_SET, WRITE_CHAR1,
	WRITE_CHAR2,WRITE_CHAR3,WRITE_CHAR4,WRITE_CHAR5,WRITE_CHAR6, RETURN_HOME, TOGGLE_E, RESET1, RESET2, 
	RESET3, DISPLAY_OFF, DISPLAY_CLEAR);
	SIGNAL state, next_command: STATE_TYPE;
	SIGNAL DATA_BUS_VALUE: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL CLK_COUNT_400HZ: STD_LOGIC_VECTOR(19 DOWNTO 0);
	SIGNAL CLK_COUNT_10HZ: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL r3out, r2out, r1out, r0out: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL CLK_400HZ, CLK_10HZ : STD_LOGIC;
BEGIN
	LCD_ON <= '1';
	rstLED <= NOT RESET;
	
-- BIDIRECTIONAL TRI STATE LCD DATA BUS
	DATA_BUS <= DATA_BUS_VALUE WHEN LCD_RW = '0' ELSE "ZZZZZZZZ";

	DivideClock: PROCESS
	BEGIN
	  WAIT UNTIL Rising_Edge(CLK_50MHZ);
	  IF RESET = '0' THEN
		 CLK_COUNT_400HZ <= X"00000"; 
		 CLK_400HZ <= '0';
	  ELSIF CLK_COUNT_400HZ < X"0F424" THEN 
		 CLK_COUNT_400HZ <= CLK_COUNT_400HZ + 1;
	  ELSE
    	 CLK_COUNT_400HZ <= X"00000"; 
		 CLK_400HZ <= NOT CLK_400HZ;
	  END IF;
	END PROCESS DivideClock;
	
	GenerateDisplay: PROCESS (CLK_400HZ, reset)
	BEGIN
      IF reset = '0' THEN
		state <= RESET1; next_command <= RESET2; DATA_BUS_VALUE <= X"38";
		LCD_E <= '1'; LCD_RS <= '0'; LCD_RW <= '0';
	  ELSIF Rising_Edge(CLK_400HZ) THEN -- GENERATE 1/10 SEC CLOCK SIGNAL FOR SECOND COUNT PROCESS
		IF CLK_COUNT_10HZ < 19 THEN
		   CLK_COUNT_10HZ <= CLK_COUNT_10HZ + 1;
		ELSE
		   CLK_COUNT_10HZ <= X"00";
		   CLK_10HZ <= NOT CLK_10HZ;
		END IF;
		-- SEND TIME TO LCD			
		CASE state IS
			-- Set Function to 8-bit transfer and 2 line display with 5x8 Font size
			-- see Hitachi HD44780 family data sheet for LCD command and timing details
		  WHEN RESET1 =>
			state <= TOGGLE_E; next_command <= RESET2; DATA_BUS_VALUE <= X"38";
			LCD_E <= '1'; LCD_RS <= '0'; LCD_RW <= '0';						
		  WHEN RESET2 =>
  			state <= TOGGLE_E; next_command <= RESET3; DATA_BUS_VALUE <= X"38";
			LCD_E <= '1'; LCD_RS <= '0'; LCD_RW <= '0';						
		  WHEN RESET3 =>
			state <= TOGGLE_E;next_command <= FUNC_SET;DATA_BUS_VALUE <= X"38";
			LCD_E <= '1';LCD_RS <= '0';LCD_RW <= '0';			
          -- EXTRA STATES ABOVE ARE NEEDED FOR RELIABLE PUSHBUTTON RESET OF LCD
		  WHEN FUNC_SET =>
			state <= TOGGLE_E;next_command <= DISPLAY_OFF;DATA_BUS_VALUE <= X"38";
		    LCD_E <= '1';LCD_RS <= '0';LCD_RW <= '0';
		  -- Turn off Display and Turn off cursor
		  WHEN DISPLAY_OFF =>
			state <= TOGGLE_E;next_command <= DISPLAY_CLEAR;DATA_BUS_VALUE <= X"08";
			LCD_E <= '1';LCD_RS <= '0';LCD_RW <= '0';	
		  -- Turn on Display and Turn off cursor
		  WHEN DISPLAY_CLEAR =>
		    state <= TOGGLE_E;next_command <= DISPLAY_ON;DATA_BUS_VALUE <= X"01";
		    LCD_E <= '1';LCD_RS <= '0';LCD_RW <= '0';
		  -- Turn on Display and Turn off cursor
		  WHEN DISPLAY_ON =>
			state <= TOGGLE_E;next_command <= MODE_SET;DATA_BUS_VALUE <= X"0C";
			LCD_E <= '1';LCD_RS <= '0';LCD_RW <= '0';
		  -- Set write mode to auto increment address and move cursor to the right
		  WHEN MODE_SET =>
			state <= TOGGLE_E;next_command <= WRITE_CHAR1;DATA_BUS_VALUE <= X"06";
			LCD_E <= '1';LCD_RS <= '0';LCD_RW <= '0';
          -- Write ASCII hex character in first LCD character location
		  WHEN WRITE_CHAR1 =>
			state <= TOGGLE_E;next_command <= WRITE_CHAR2;DATA_BUS_VALUE <= X"52";
			LCD_E <= '1';LCD_RS <= '1';LCD_RW <= '0';
		  -- Write ASCII hex character in second LCD character location
		  WHEN WRITE_CHAR2 =>
			state <= TOGGLE_E;next_command <= WRITE_CHAR3;DATA_BUS_VALUE <= X"3A";
			LCD_E <= '1';LCD_RS <= '1';LCD_RW <= '0';
	      -- Write ASCII hex character in third LCD character location
		  WHEN WRITE_CHAR3 =>
			state <= TOGGLE_E;next_command <= WRITE_CHAR4;DATA_BUS_VALUE <= r3out;
			LCD_E <= '1';LCD_RS <= '1';LCD_RW <= '0';
		  -- Write ASCII hex character in fourth LCD character location
		  WHEN WRITE_CHAR4 =>
			state <= TOGGLE_E;next_command <= WRITE_CHAR5;DATA_BUS_VALUE <= r2out;
			LCD_E <= '1';LCD_RS <= '1';LCD_RW <= '0';
		  -- Write ASCII hex character in fifth LCD character location
		  WHEN WRITE_CHAR5 =>
			state <= TOGGLE_E;next_command <= WRITE_CHAR6;DATA_BUS_VALUE <= r1out;
			LCD_E <= '1';LCD_RS <= '1';LCD_RW <= '0';
		  -- Write ASCII hex character in sixth LCD character location
		  WHEN WRITE_CHAR6 =>
			state <= TOGGLE_E;next_command <= RETURN_HOME;DATA_BUS_VALUE <= r0out;
			LCD_E <= '1';LCD_RS <= '1';LCD_RW <= '0';
		  -- Return write address to first character postion
		  WHEN RETURN_HOME =>
			state <= TOGGLE_E;next_command <= WRITE_CHAR1;DATA_BUS_VALUE <= X"80";
			LCD_E <= '1'; LCD_RS <= '0'; LCD_RW <= '0';
		  -- The next two states occur at the end of each command to the LCD
		  -- Toggle E line - falling edge loads inst/data to LCD controller
		  WHEN TOGGLE_E =>
			state <= HOLD;		  
			LCD_E <= '0';
		  -- Hold LCD inst/data valid after falling edge of E line				
		  WHEN HOLD =>
			state <= next_command;
		  END CASE;
		END IF;
	END PROCESS GenerateDisplay;
	
    with display_data(15 downto 12) select
  	  r3out<= X"31" when "0001",   --1
              X"32" when "0010",   --2
              X"33" when "0011",   --3
              X"34" when "0100",   --4
              X"35" when "0101",   --5
              X"36" when "0110",   --6
              X"37" when "0111",   --7
              X"38" when "1000",   --8
              X"39" when "1001",   --9
              X"41" when "1010",   --A
              X"42" when "1011",   --b
              X"43" when "1100",   --C
              X"44" when "1101",   --d
              X"45" when "1110",   --E
              X"46" when "1111",   --F
              X"30" when others;   --0
			
	with display_data(11 downto 8) select
      r2out<= X"31" when "0001",   --1
              X"32" when "0010",   --2
              X"33" when "0011",   --3
              X"34" when "0100",   --4
              X"35" when "0101",   --5
              X"36" when "0110",   --6
              X"37" when "0111",   --7
              X"38" when "1000",   --8
              X"39" when "1001",   --9
              X"41" when "1010",   --A
              X"42" when "1011",   --b
              X"43" when "1100",   --C
              X"44" when "1101",   --d
              X"45" when "1110",   --E
              X"46" when "1111",   --F
              X"30" when others;   --0
			
	with display_data(7 downto 4) select
      r1out<= X"31" when "0001",   --1
              X"32" when "0010",   --2
              X"33" when "0011",   --3
              X"34" when "0100",   --4
              X"35" when "0101",   --5
              X"36" when "0110",   --6
              X"37" when "0111",   --7
              X"38" when "1000",   --8
              X"39" when "1001",   --9
              X"41" when "1010",   --A
              X"42" when "1011",   --b
              X"43" when "1100",   --C
              X"44" when "1101",   --d
              X"45" when "1110",   --E
              X"46" when "1111",   --F
              X"30" when others;   --0
			
	with display_data(3 downto 0) select
      r0out<= X"31" when "0001",   --1
              X"32" when "0010",   --2
              X"33" when "0011",   --3
              X"34" when "0100",   --4
              X"35" when "0101",   --5
              X"36" when "0110",   --6
              X"37" when "0111",   --7
              X"38" when "1000",   --8
              X"39" when "1001",   --9
              X"41" when "1010",   --A
              X"42" when "1011",   --b
              X"43" when "1100",   --C
              X"44" when "1101",   --d
              X"45" when "1110",   --E
              X"46" when "1111",   --F
              X"30" when others;   --0
END decription;

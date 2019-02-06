----------------------------------------------------------------------------------
-- test control
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_control is
end test_control;

architecture a_test_control of test_control is

	component refresco
	Port ( CLK : in  STD_LOGIC;         -- reloj de la FPGA
           AN : out STD_LOGIC_VECTOR(3 downto 0);
			  SEC : out STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(1 downto 0));  -- señal para controlar el mux.
end component;

	signal CLK : STD_LOGIC := '0';
	signal AN : STD_LOGIC_VECTOR(3 downto 0) := "0000";	
	signal SEC : STD_LOGIC := '0';
	signal S :  STD_LOGIC_VECTOR(1 downto 0) := "00";

	constant CLK_period : time := 10 ns;
begin
	uut: refresco
		port map(
		CLK => CLK,
		AN => AN,
		SEC => SEC,
		S => S);

   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;


end a_test_control;


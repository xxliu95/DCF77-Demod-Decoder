----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:   	Registro de desplazamiento de 40 bits 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity reg_desp40 is
    Port ( SIN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (39 downto 0));
end reg_desp40;

architecture a_reg_desp40 of reg_desp40 is

signal cont : INTEGER := 39;
signal Qout : STD_LOGIC_VECTOR (39 downto 0):= (others=>'0');

begin
	process(CLK)
	begin
		if CLK'event and CLK='1' then
			Qout <= Qout(38 downto 0) & SIN;
			-- Qout <= SIN & Qout(39 downto 1);
		end if;
	end process;

Q <= Qout;

end a_reg_desp40;


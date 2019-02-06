----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:   	Registro de desplazamiento de 14 bits con enable 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_desp is
    Port ( SIN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (30 downto 0));
end reg_desp;

architecture a_reg_desp of reg_desp is

signal cont : INTEGER := 30;
signal Qout : STD_LOGIC_VECTOR (30 downto 0):= (others=>'1');

begin
	process(CLK)
	begin
		if CLK'event and CLK='1' and EN='1' then
			Qout <= Qout(29 downto 0) & SIN; 
		end if;
	end process;

Q <= Qout;

end a_reg_desp;

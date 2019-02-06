----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:    decodificador del dia de la semana
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decodificador is
    Port ( S : in  STD_LOGIC_VECTOR (2 downto 0);
			  DIA : out  STD_LOGIC_VECTOR (6 downto 0));
end decodificador;

architecture a_decodificador of decodificador is

begin

with S select DIA <=
	"1000000" when "000",
	"0100000" when "001",
	"0010000" when "010",
	"0001000" when "011",
	"0000100" when "100",
	"0000010" when "101",
	"0000001" when "110",
	"0000110" when others;


end a_decodificador;


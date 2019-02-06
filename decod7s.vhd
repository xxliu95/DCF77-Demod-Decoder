----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:    decodificador de 7 segmentos
--
----------------------------------------------------------------------------------

Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity decod7s is
    Port ( D : in  STD_LOGIC_VECTOR (3 downto 0); -- entrada de datos en binario
           S : out  STD_LOGIC_VECTOR (6 downto 0));   -- salidas para los segmentos
end decod7s;

architecture a_decod7s of decod7s is

begin

with D select S <=
"1000000" when "0000",
"1111001" when "0001",
"0100100" when "0010",
"0110000" when "0011",
"0011001" when "0100",
"0010010" when "0101",
"0000010" when "0110",
"1111000" when "0111",
"0000000" when "1000",
"0011000" when "1001",
"0000110" when others;

end a_decod7s;

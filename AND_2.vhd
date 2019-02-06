----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:   	Puerta AND
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_2 is
    Port ( A : in  STD_LOGIC;  --Entrada A
           B : in  STD_LOGIC;  --Entrada B
           S : out  STD_LOGIC);--Salida
end AND_2;

architecture a_AND_2 of AND_2 is

begin
	S<=A AND B;
end a_AND_2;


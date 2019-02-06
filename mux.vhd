----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:    Multiplexor de 4x4
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX4x4 is
    Port ( E0 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Entrada de datos 0
           E1 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Entrada de datos 1
			  E2 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Entrada de datos 0
           E3 : in  STD_LOGIC_VECTOR (3 downto 0);  -- Entrada de datos 1
           S : in  STD_LOGIC_VECTOR(1 downto 0);     -- Entrada de control
           Y : out  STD_LOGIC_VECTOR (3 downto 0)); -- Salida
end MUX4x4;

architecture a_MUX4x4 of MUX4x4 is

begin

with S select Y<=
E0 when "00",
E1 when "01",
E2 when "10",
E3 when "11",
E0 when others;

end a_MUX4x4;

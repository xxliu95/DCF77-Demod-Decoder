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

entity MUX14x14 is
    Port ( E0 : in  STD_LOGIC_VECTOR (13 downto 0);
           E1 : in  STD_LOGIC_VECTOR (13 downto 0);
           Y : out  STD_LOGIC_VECTOR (13 downto 0);
           S : in  STD_LOGIC);
end MUX14x14;

architecture a_MUX14x14 of MUX14x14 is

begin

with S select Y<=
E0 when '0',
E1 when '1',
E0 when others;


end a_MUX14x14;


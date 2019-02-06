----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:   	Registro de validacion
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity registro is
    Port ( ENTRADA : in  STD_LOGIC_VECTOR (30 downto 0);
           SALIDA : out  STD_LOGIC_VECTOR (30 downto 0);
           EN : in  STD_LOGIC;
           RCLK : in  STD_LOGIC);
end registro;

architecture a_registro of registro is
	signal Q : STD_LOGIC_VECTOR (30 downto 0);
begin
	process(RCLK)
	begin
		if RCLK'event and RCLK='1' and EN='1' then
			Q <= ENTRADA; 
		end if;
	end process;
SALIDA <= Q;



end a_registro;


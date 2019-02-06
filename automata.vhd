----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:    automata
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity automata is
    Port ( CLK : in  STD_LOGIC;
           C0 : in  STD_LOGIC;
           C1 : in  STD_LOGIC;
           DATO : out  STD_LOGIC;
           CAPTUR : out  STD_LOGIC;
           VALID : out  STD_LOGIC);
end automata;

architecture a_automata of automata is
type TIPO_ESTADO is (ESP_SYNC,AVAN_ZM,MUESTREO,DATO0,DATO1,DATOSYNC);
signal ST : TIPO_ESTADO:= ESP_SYNC ; -- Estado inicial en que arranca
signal salidas : STD_LOGIC_VECTOR (2 downto 0) :="000";
signal C : STD_LOGIC_VECTOR(1 downto 0);

begin
	C	<= C0 & C1;
	process (CLK)
	variable cont : STD_LOGIC_VECTOR (7 downto 0):="00000000"; -- contador
	begin
	if (CLK'event and CLK = '1') then
		case ST is
			when ESP_SYNC => -- Estado normal, dura 1 ciclo de reloj
				if C = "00" then
					ST<= AVAN_ZM;
				elsif C = "01" then
					ST<=ESP_SYNC;
				elsif C = "10" then
					ST<=ESP_SYNC;
				elsif C = "11" then
					ST<=ESP_SYNC;
				end if;
			when AVAN_ZM => -- Estado que dura 20 ciclos de reloj
				cont:= cont+1; -- Se incrementa el contador.
				if (cont=20) then -- Si llega a 20
					cont:=(others=>'0'); -- Poner el contador a 0
					ST<=MUESTREO; -- Y cambiar de estado
				else
					ST<=AVAN_ZM; -- Si no ha llegado a 20 permanecer
				end if; -- en el mismo estado
			when MUESTREO =>
				cont:= cont+1; -- Se incrementa el contador.
				if (cont=39) then -- Si llega a 20
					cont:=(others=>'0'); -- Poner el contador a 0
					if C="11" then
						ST<=MUESTREO;
					elsif C="10" then
						ST<=DATO0;
					elsif C="01" then
						ST<=DATO1;
					elsif C="00" then
						ST<=DATOSYNC;
					end if;
				else
					ST<=MUESTREO;
				end if; 
			when DATO0 =>
				ST<=MUESTREO;
			when DATO1 =>
				ST<=MUESTREO;
			when DATOSYNC =>
				ST<=MUESTREO;
			
		end case;
	end if;
end process;

with ST select
				salidas<=
					"000" when ESP_SYNC,
					"000"	when AVAN_ZM,
					"000"	when MUESTREO,
					"010" when DATO0,
					"110" when DATO1,
					"001" when DATOSYNC,
					"000" when others;

DATO <= salidas(2);
CAPTUR <= salidas(1);
VALID <= salidas(0);

end a_automata;


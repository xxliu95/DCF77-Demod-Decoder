----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:    refresco
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity refresco is
    Port ( CLK : in  STD_LOGIC;         -- reloj de la FPGA
           AN : out STD_LOGIC_VECTOR(3 downto 0);
			  SEC : out STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(1 downto 0));  -- señal para controlar el mux.
end refresco;

architecture a_refresco of refresco is
signal contador : STD_LOGIC_VECTOR (31 downto 0);
signal salida : STD_LOGIC_VECTOR (1 downto 0);
signal secundero : STD_LOGIC;
signal contador2: STD_LOGIC_VECTOR (31 downto 0);
--signal dsp : STD_LOGIC_VECTOR (3 downto 0);
begin

process (CLK)
begin
if CLK'event and CLK='1' then   -- el periodo del reloj es de 20 ns
	contador<=contador + '1'; -- por tanto 500.000 cuentas se corresponden
 if contador=50000 then       -- con el transcurso de 10 ms.
    salida <= salida + '1';
	 contador<=(others=>'0');
  end if;
  
  contador2<=contador2 + '1'; -- 25000000 ser¨ªan 500ms
  if contador2=25000000 then
	 secundero <= not secundero;
	 contador2<=(others=>'0');
  end if;
end if;
end process;

S<=salida;
AN <= 	"0111" when salida="00" else
			"1011" when salida="01" else
			"1101" when salida="10" else
			"1110" when salida="11";
SEC <=	secundero when salida="01" else
			'0' when salida ="00" else
			'0' when salida ="10" else
			'0' when salida ="11";
			
--AN(0)<=dsp(0);
--AN(1)<=dsp(1);
--AN(2)<=dsp(2);
--AN(3)<=dsp(3);


end a_refresco;


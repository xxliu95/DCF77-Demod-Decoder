----------------------------------------------------------------------------------
-- CELT 
-- Alumnos: Xinxin Liu
-- 			Gonzalo Capilla paredes
-- Grupo: XT14
-- 
-- Module Name:    cableado del circuito completo
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity principal is
    Port ( CLK : in  STD_LOGIC;
           SIN : in  STD_LOGIC;
			  PULSADOR : in STD_LOGIC;
			  DIA : out STD_LOGIC_VECTOR (6 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0);
			  SEC : out STD_LOGIC_VECTOR;
           SEG7 : out  STD_LOGIC_VECTOR (6 downto 0));
end principal;

architecture a_principal of principal is

-- Constantes del circuito (umbrales de decisión)

constant UMBRAL1 : STD_LOGIC_VECTOR (5 downto 0) := "100010"; -- 34
constant UMBRAL2 : STD_LOGIC_VECTOR (5 downto 0) := "100110"; -- 38

signal entComp : STD_LOGIC_VECTOR(5 downto 0);
signal CLK_M : STD_LOGIC;
signal entSuma : STD_LOGIC_VECTOR(39 downto 0);
signal PLEQ1, PGTQ1, PLEQ2,PGTQ2 ,salAND : STD_LOGIC;
signal val, dat, cap : STD_LOGIC;
signal salRegDesp, salRegVal : STD_LOGIC_VECTOR(30 downto 0);
signal entVisu : STD_LOGIC_VECTOR(13 downto 0);

component gen_reloj
	Port ( 	CLK : in STD_LOGIC; -- Reloj de la FPGA
				CLK_OUT : out STD_LOGIC); -- Reloj de frecuencia dividida
end component;

component reg_desp40
	Port ( 	SIN : in STD_LOGIC; -- Datos de entrada serie
				CLK : in STD_LOGIC; -- Reloj de muestreo
				Q : out STD_LOGIC_VECTOR (39 downto 0)); -- Salida paralelo
end component;

component sumador40
	Port ( 	ENT : in STD_LOGIC_VECTOR (39 downto 0);
				SAL : out STD_LOGIC_VECTOR (5 downto 0));
end component;

component comparador
	Port ( 	P : in STD_LOGIC_VECTOR (5 downto 0);
				Q : in STD_LOGIC_VECTOR (5 downto 0);
				PGTQ : out STD_LOGIC;
				PLEQ : out STD_LOGIC);
end component;

component AND_2
	Port ( 	A : in STD_LOGIC;
				B : in STD_LOGIC;
				S : out STD_LOGIC);
end component;

component reg_desp
	Port (	SIN : in STD_LOGIC; -- Datos de entrada serie
				CLK : in STD_LOGIC; -- Reloj
				EN : in STD_LOGIC; -- Enable
				Q : out STD_LOGIC_VECTOR (30 downto 0)); -- Salida paralelo
end component;

component registro
	Port ( 	ENTRADA : in STD_LOGIC_VECTOR (30 downto 0);
				SALIDA : out STD_LOGIC_VECTOR (30 downto 0);
				EN : in STD_LOGIC; -- Enable
				RCLK : in STD_LOGIC);
end component;

component MUX14x14
	 Port ( E0 : in  STD_LOGIC_VECTOR (13 downto 0);
           E1 : in  STD_LOGIC_VECTOR (13 downto 0);
           Y : out  STD_LOGIC_VECTOR (13 downto 0);
           S : in  STD_LOGIC);
end component;

component decodificador
	Port ( S : in  STD_LOGIC_VECTOR (2 downto 0);
			  DIA : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component automata
	Port (	CLK : in STD_LOGIC; -- Reloj del autómata
				C0 : in STD_LOGIC; -- Condición de decision para "0"
				C1 : in STD_LOGIC; -- Condición de decisión para "1"
				DATO : out STD_LOGIC; -- Datos a cargar
				CAPTUR : out STD_LOGIC; -- Enable del reg. de desplaz.
				VALID : out STD_LOGIC); -- Activación registro
end component;

component visualizacion
	Port ( 	E0 : in STD_LOGIC_VECTOR (3 downto 0); -- Entrada MUX 0
				E1 : in STD_LOGIC_VECTOR (3 downto 0); -- Entrada MUX 1
				E2 : in STD_LOGIC_VECTOR (3 downto 0); -- Entrada MUX 2
				E3 : in STD_LOGIC_VECTOR (3 downto 0); -- Entrada MUX 3
				CLK : in STD_LOGIC; -- Entrada de reloj FPGA
				SEC : out STD_LOGIC;
				SEG7 : out STD_LOGIC_VECTOR (6 downto 0); -- Salida para los displays
				AN : out STD_LOGIC_VECTOR (3 downto 0)); -- Activación individual
end component;

begin

U1 : gen_reloj
	Port map( CLK => CLK,
			CLK_OUT => CLK_M);

U2 : reg_desp40
	Port map( SIN => SIN,
			CLK => CLK_M,
			Q => entSuma);
			
U3 : sumador40
	Port map( ENT => entSuma,
			SAL => entComp);

U4 : comparador
	Port map(	P => entComp,
			Q => UMBRAL1,
			PGTQ => PGTQ1,
			PLEQ => PLEQ1);

U5 : comparador
	Port map(	P => entComp,
			Q => UMBRAL2,
			PGTQ => PGTQ2,
			PLEQ => PLEQ2);
	
U6 : AND_2
	Port map( A => PGTQ1,
			B => PLEQ2,
			S => salAND);
U7 : automata
	Port map( CLK => CLK_M,
			C1 => PLEQ1,
			C0 => salAND,
			DATO => dat,
			CAPTUR => cap,
			VALID => val);
			
U8 : reg_desp
	Port map( SIN => dat,
			CLK => CLK_M,
			EN => cap,
			Q => salRegDesp);
			
U9 : registro
	Port map( ENTRADA => salRegDesp,
			RCLK => CLK_M,
			EN => val,
			SALIDA => salRegVal);

U10 : MUX14x14
	Port map( E1 => salRegVal(16 downto 3),
			E0 => salRegVal(30 downto 17),
			Y => entVisu,
			S => PULSADOR);
			
U11 : decodificador
	Port map( S => salRegVal(2 downto 0),
			DIA => DIA);
			
			
U12 : visualizacion
	Port map( E3(3) => '0',	
			E3 (2 downto 0) => entVisu(13 downto 11),
			E2 => entVisu(10 downto 7),
			E1(3) => '0' ,
			E1(2 downto 0) => entVisu(6 downto 4),
			E0 => entVisu(3 downto 0),
			CLK => CLK,
			SEG7 => SEG7,
			SEC => SEC,
			AN => AN);

			
end a_principal;


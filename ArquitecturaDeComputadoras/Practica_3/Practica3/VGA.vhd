----	Programa de control de sincronia		----
----	Elaborado por:
----	Fecha:	2 de Jubio de 2022

	--	Declaracion de las bibliotecas --

			library ieee;
			use ieee.std_logic_1164.all;
			use ieee.std_logic_unsigned.all;
			use ieee.numeric_std.all;
			--use work.SYNC2.all;

	--	Declaracion de la entidad
				
			Entity VGA Is
					PORT(
						CLOCK_50: IN STD_LOGIC;
						CTRL: in std_logic_vector(1 downto 0);
						
						A_1: in std_logic_vector(4 downto 0);
						A_2: in std_logic_vector(4 downto 0);
						A_3: in std_logic_vector(4 downto 0);
						
						-- DATO: IN STD_LOGIC;
						
						VGA_HS,VGA_VS,VGA_SYNC_N,VGA_BLANK_N,VGA_CLK:OUT STD_LOGIC;
						VGA_R,VGA_B,VGA_G: OUT STD_LOGIC_VECTOR(7 downto 0);
						
						clr: in std_logic;
						Datos: out std_logic_vector(7 downto 0);
						E, RS, RW: out std_logic
						
					    );
			END VGA;
			
	--	Declaracion de la arquitectura --

			Architecture MAIN of VGA is
			
			
			
			
			
				Signal VGACLK,RESET:STD_LOGIC;
	--	Declaracion del componente de sincronia			
	
			 COMPONENT SYNC2 IS
					 PORT(
						CLK: IN STD_LOGIC;
						U: IN integer; 
						V: IN integer;
						W: IN integer;
						CTRL: IN STD_LOGIC_VECTOR;
						-- DATO: IN STD_LOGIC;
						HSYNC: OUT STD_LOGIC;
						VSYNC: OUT STD_LOGIC;
						R, G, B: OUT STD_LOGIC_VECTOR(7 downto 0)
							);
			  END COMPONENT SYNC2;

			--	Declaracion del lazo de fase cerrado

				 component pll is
					  port (
							 clk_in_clk   : in  std_logic := 'X'; -- clk
							 reset_reset  : in  std_logic := 'X'; -- reset
							 clk_out1_clk : out std_logic;        -- clk
							 clk_out2_clk : out std_logic         -- clk
             			 );
				 END COMPONENT pll;
				
				
				signal U: integer :=0;
				signal V: integer :=0;
				signal W: integer :=0;

				
				
				
				---VARIABLES PARA EL LCD
			 constant base_dly    : Integer := 10000; 		    -- Constante para 50 MHz
			 signal countdly    : INTEGER range 0 to base_dly;  -- Señal para retardo
			 signal clkdly   : std_logic;                       -- Reloj ya ralentizado
			 			 	
	-- -------------------------------------
	--      Declaracion de los estados
	-- -------------------------------------

			 type state is (LCD_INI, D_OFF, LCD_CLR, D_ON, ENTRY, MSG1, MSG2, L1, L2);    -- Tipo para creacion de estados    
			 signal current_state, next_state: state;    -- señales tipo estado
			
			
			
			 type arreglo is array (0 to 15) of std_logic_vector(7 downto 0);   -- Creacion de un arreglo
			 type variables is array (0 to 15) of std_logic_vector(3 downto 0); -- Creacion de arreglo de entradas

				-- Declaracion de los caracteres codificados
			 constant h0 : std_logic_vector(7 downto 0) := X"30";
			 constant h1 : std_logic_vector(7 downto 0) := X"31";
			 constant h2 : std_logic_vector(7 downto 0) := X"32";
			 constant h3 : std_logic_vector(7 downto 0) := X"33";
			 constant h4 : std_logic_vector(7 downto 0) := X"34";
			 constant h5 : std_logic_vector(7 downto 0) := X"35";
			 constant h6 : std_logic_vector(7 downto 0) := X"36";
			 constant h7 : std_logic_vector(7 downto 0) := X"37";
			 constant h8 : std_logic_vector(7 downto 0) := X"38";
			 constant h9 : std_logic_vector(7 downto 0) := X"39";
			 constant hA : std_logic_vector(7 downto 0) := X"41";
			 constant hB : std_logic_vector(7 downto 0) := X"42";
			 constant hC : std_logic_vector(7 downto 0) := X"43";
			 constant hD : std_logic_vector(7 downto 0) := X"44";
			 constant hE : std_logic_vector(7 downto 0) := X"45";
			 constant hF : std_logic_vector(7 downto 0) := X"46";
			 constant signoMenos : std_logic_vector(7 downto 0) := X"2B";
		 	 constant signoMas	: std_logic_vector(7 downto 0) := X"2D";

			 
			
			 signal mensaje1 : arreglo := ( X"FE", X"FE", X"FE", X"FE", X"FE", X"FE", X"FE", X"FE",
													  X"FE", X"FE", X"FE", X"FE", X"FE", X"FE", X"FE", X"FE");
														  
    	    signal mensaje2 : arreglo := ( X"FE", X"55", X"3D", X"FE", X"FE", X"FE", X"56", X"3D",
													  X"FE", X"FE", X"FE", X"57", X"3D", X"FE", X"FE", X"FE");
													 
			 signal mensaje3 : arreglo := ( X"FE", X"FE", X"FE", X"FE", X"FE", X"FE", X"FE", X"FE",
													  X"FE", X"FE", X"FE", X"FE", X"FE", X"FE", X"FE", X"FE");
														  
    	    signal mensaje4 : arreglo := ( X"FE", X"55", X"3D", X"FE", X"FE", X"FE", X"56", X"3D",
													  X"FE", X"FE", X"FE", X"57", X"3D", X"FE", X"FE", X"FE");
													  												  
				BEGIN
				
				--------------VGA-------------------------
				
				U<= to_integer(signed(A_1));
				V<= to_integer(signed(A_2));
				W<= to_integer(signed(A_3));

				VGA_BLANK_N <= '1';			-- No se usa la limpieza de pantalla directamente
				VGA_SYNC_N	<= '1';			--	No se usa la sincronia del verde
				
				C: pll PORT MAP (CLOCK_50,RESET,VGA_CLK,VGACLK);
				C1: SYNC2 PORT MAP(VGACLK,U,V,W,CTRL, VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B); -- DATO: IN STD_LOGIC;
				-----------------------------VGA-----------------------------------
				
				
				
				

				
				
				
				
				
				
				RW <= '0';    -- Como no se usa la lectura, esta salida se pone en 0

 
 
 Clock:      process(next_state, countdly, CLOCK_50, clkdly, clr) -- DELAY DEL RELOJ
              
             begin
				 
					 if clr = '0' then                  -- Si hay un reset
					 
						 current_state <= LCD_INI;       -- Que inicie con el estado inicializacion    
						 
					 elsif (CLOCK_50' event and CLOCK_50 = '1') then  -- Control del reloj (50MHz)
						 
						  if countdly < base_dly then        -- Control de incremento del contador
						          countdly <= countdly+1;    -- Incremento del contador para retardo
				        else
								 	 current_state <= next_state; -- Salto de estado
									 clkdly <= not clkdly;        -- Generacion de pulsos para el reloj ralentizado
									 countdly <= 0;               -- Reinicio del contador para retardo
				        end if;	
									 
					 end if;

            end process;
 
 
 
			END MAIN;
 
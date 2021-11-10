-- pdt.vhd
--
--	Package contenete i componenti elementari per compilare
--	i file iscas
--
-----------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package	gate_lib is
	component AND_GATE 
		port( 
			I1, I2 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component AND3_GATE
		port( 
			I1, I2, I3 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;
		
	component AND4_GATE
		port( 
			I1, I2, I3, I4 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component AND5_GATE
		port( 
			I1, I2, I3, I4, I5 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component NAND_GATE
		port( 
			I1, I2 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component NAND3_GATE
		port( 
			I1, I2, I3 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;
		
	component NAND4_GATE
		port( 
			I1, I2, I3, I4 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component NAND5_GATE
		port( 
			I1, I2, I3, I4, I5 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component OR_GATE
		port( 
			I1, I2 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component OR3_GATE
		port( 
			I1, I2, I3 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;
		
	component OR4_GATE
		port( 
			I1, I2, I3, I4 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component OR5_GATE
		port( 
			I1, I2, I3, I4, I5 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component NOR_GATE
		port( 
			I1, I2 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component NOR3_GATE
		port( 
			I1, I2, I3 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;
		
	component NOR4_GATE
		port( 
			I1, I2, I3, I4 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component NOR5_GATE
		port( 
			I1, I2, I3, I4, I5 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component XOR_GATE
		port( 
			I1, I2 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component XOR3_GATE
		port( 
			I1, I2, I3 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;
		
	component XOR4_GATE
		port( 
			I1, I2, I3, I4 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component XOR5_GATE
		port( 
			I1, I2, I3, I4, I5 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component XNOR_GATE
		port( 
			I1, I2 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component XNOR3_GATE
		port( 
			I1, I2, I3 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;
		
	component XNOR4_GATE
		port( 
			I1, I2, I3, I4 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component XNOR5_GATE
		port( 
			I1, I2, I3, I4, I5 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component INV_GATE
		port(
			I1 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component BUF_GATE
		port(
			I1 : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;

	component LATCH_D
		port(
			LE : in STD_LOGIC;
			D :  in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component FLIP_FLOP_D
		port(
			CK : in STD_LOGIC;
			D :  in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component FLIP_FLOP_D_SCAN
		port(
			CK : in STD_LOGIC;
			D :  in STD_LOGIC;
			SE:  in STD_LOGIC;
			SI:  in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component FLIP_FLOP_D_RESET
		port(
			CK, D, RESET : in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component FLIP_FLOP_D_RESET_SCAN
		port(
			CK, D, RESET : in STD_LOGIC;
			SE:  in STD_LOGIC;
			SI:  in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component FLIP_FLOP_D_PRESET
		port(
			CK, D, PRESET : in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component FLIP_FLOP_D_PRESET_SCAN
		port(
			CK, D, PRESET : in STD_LOGIC;
			SE:  in STD_LOGIC;
			SI:  in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component FLIP_FLOP_D_RESET_PRESET
		port(
			CK, D, RESET, PRESET : in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component FLIP_FLOP_D_RESET_PRESET_SCAN
		port(
			CK, D, RESET, PRESET : in STD_LOGIC;
			SE:  in STD_LOGIC;
			SI:  in STD_LOGIC;
			Q : out STD_LOGIC
		);
	end component;

	component THREE_STATE_BUF_GATE
		port (
			I1 : in STD_LOGIC;
			E : in STD_LOGIC;
			O : out STD_LOGIC
		);
	end component;
end gate_lib;

---------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AND_GATE is 
	port ( I1 , I2: in std_logic;
		O     : out std_logic);
end AND_GATE;

architecture behav of AND_GATE is
begin
P1: process( I1, I2 )
begin
	O <= (I1 and I2) after 0.1 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AND3_GATE is
	port(
		I1, I2, I3 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end AND3_GATE;

architecture behav of AND3_GATE is
begin
P1: process( I1, I2, I3 )
begin
	O <= I1 and (I2 and I3) after 0.2 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AND4_GATE is
	port(
		I1, I2, I3, I4 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end AND4_GATE;

architecture behav of AND4_GATE is
begin
P1: process( I1, I2, I3, I4 )
begin
	O <= I1 and (I2 and (I3 and I4)) after 0.3 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AND5_GATE is
	port(
		I1, I2, I3, I4, I5 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end AND5_GATE;

architecture behav of AND5_GATE is
begin
P1: process( I1, I2, I3, I4, I5 )
begin
	O <= I1 and (I2 and (I3 and (I4 and I5))) after 0.4 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NAND_GATE is
	port(
		I1, I2 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end NAND_GATE;

architecture behav of NAND_GATE is
begin
P1: process( I1, I2 )
begin
	O <= I1 nand I2 after 0.1 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NAND3_GATE is
	port(
		I1, I2, I3 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end NAND3_GATE;

architecture behav of NAND3_GATE is
begin
P1: process( I1, I2, I3 )
begin
	O <= Not(I1 and (I2 and I3)) after 0.2 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NAND4_GATE is
	port(
		I1, I2, I3, I4 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end NAND4_GATE;

architecture behav of NAND4_GATE is
begin
P1: process( I1, I2, I3, I4 )
begin
	O <= not (I1 and (I2 and (I3 and I4))) after 0.3 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NAND5_GATE is
	port(
		I1, I2, I3, I4, I5 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end NAND5_GATE;

architecture behav of NAND5_GATE is
begin
P1: process( I1, I2, I3, I4, I5 )
begin
	O <= not (I1 and (I2 and (I3 and (I4 and I5)))) after 0.4 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity OR_GATE is
	port(
		I1, I2 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end OR_GATE;

architecture behav of OR_GATE is
begin
P1: process( I1, I2 )
begin
	O <= I1 or I2 after 0.1 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity OR3_GATE is
	port(
		I1, I2, I3 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end OR3_GATE;

architecture behav of OR3_GATE is
begin
P1: process( I1, I2, I3 )
begin
	O <= I1 or (I2 or I3) after 0.2 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity OR4_GATE is
	port(
		I1, I2, I3, I4 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end OR4_GATE;

architecture behav of OR4_GATE is
begin
P1: process( I1, I2, I3, I4 )
begin
	O <= I1 or (I2 or (I3 or I4)) after 0.3 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity OR5_GATE is
	port(
		I1, I2, I3, I4, I5 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end OR5_GATE;

architecture behav of OR5_GATE is
begin
P1: process( I1, I2, I3, I4, I5 )
begin
	O <= I1 or (I2 or (I3 or (I4 or I5))) after 0.4 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NOR_GATE is
	port(
		I1, I2 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end NOR_GATE;

architecture behav of NOR_GATE is
begin
P1: process( I1, I2 )
begin
	O <= I1 nor I2 after 0.1 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NOR3_GATE is
	port(
		I1, I2, I3 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end NOR3_GATE;

architecture behav of NOR3_GATE is
begin
P1: process( I1, I2, I3 )
begin
	O <= not (I1 or (I2 or I3)) after 0.2 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NOR4_GATE is
	port(
		I1, I2, I3, I4 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end NOR4_GATE;

architecture behav of NOR4_GATE is
begin
P1: process( I1, I2, I3, I4 )
begin
	O <= not (I1 or (I2 or (I3 or I4))) after 0.3 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity NOR5_GATE is
	port(
		I1, I2, I3, I4, I5 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end NOR5_GATE;

architecture behav of NOR5_GATE is
begin
P1: process( I1, I2, I3, I4, I5 )
begin
	O <= not (I1 or (I2 or (I3 or (I4 or I5)))) after 0.4 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XOR_GATE is
	port(
		I1, I2 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end XOR_GATE;

architecture behav of XOR_GATE is
begin
P1: process( I1, I2 )
begin
	O <= I1 xor I2 after 0.1 ns;
end process;
end behav; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XOR3_GATE is
	port(
		I1, I2, I3 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end XOR3_GATE;

architecture behav of XOR3_GATE is
begin
P1: process( I1, I2, I3 )
begin
	O <= I1 xor (I2 xor I3) after 0.2 ns;
end process;
end behav; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XOR4_GATE is
	port(
		I1, I2, I3, I4 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end XOR4_GATE;

architecture behav of XOR4_GATE is
begin
P1: process( I1, I2, I3, I4 )
begin
	O <= I1 xor (I2 xor (I3 xor I4)) after 0.3 ns;
end process;
end behav; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XOR5_GATE is
	port(
		I1, I2, I3, I4, I5 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end XOR5_GATE;

architecture behav of XOR5_GATE is
begin
P1: process( I1, I2, I3, I4, I5 )
begin
	O <= I1 xor (I2 xor (I3 xor (I4 xor I5))) after 0.4 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XNOR_GATE is
	port(
		I1, I2 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end XNOR_GATE;

architecture behav of XNOR_GATE is
begin
P1: process( I1, I2 )
begin
	O <= not(I1 xor I2) after 0.1 ns;
end process;
end behav; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XNOR3_GATE is
	port(
		I1, I2, I3 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end XNOR3_GATE;

architecture behav of XNOR3_GATE is
begin
P1: process( I1, I2, I3 )
begin
	O <= not (I1 xor (I2 xor I3)) after 0.2 ns;
end process;
end behav; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XNOR4_GATE is
	port(
		I1, I2, I3, I4 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end XNOR4_GATE;

architecture behav of XNOR4_GATE is
begin
P1: process( I1, I2, I3, I4 )
begin
	O <= not (I1 xor (I2 xor (I3 xor I4))) after 0.3 ns;
end process;
end behav; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity XNOR5_GATE is
	port(
		I1, I2, I3, I4, I5 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end XNOR5_GATE;

architecture behav of XNOR5_GATE is
begin
P1: process( I1, I2, I3, I4, I5 )
begin
	O <= not (I1 xor (I2 xor (I3 xor (I4 xor I5)))) after 0.4 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity INV_GATE is
	port(
		I1 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end INV_GATE;

architecture behav of INV_GATE is
begin
P1: process( I1 )
begin
	O <= not I1 after 0.1 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity BUF_GATE is
	port(
		I1 : in STD_LOGIC;
		O : out STD_LOGIC
	);
end BUF_GATE;

architecture behav of BUF_GATE is
begin
P1: process( I1 )
begin
	O <= I1 after 0.1 ns;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity LATCH_D is
	port (
		LE : in STD_LOGIC;
		D : in STD_LOGIC;
		Q : out STD_LOGIC
	);
end LATCH_D;

architecture behav of LATCH_D is
begin
P1: process( LE, D )
begin
	if LE = '1' then
		Q <= D after 0.1 ns;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FLIP_FLOP_D is
	port (
		CK : in STD_LOGIC;
		D : in STD_LOGIC;
		Q : out STD_LOGIC
	);
end FLIP_FLOP_D;

architecture behav of FLIP_FLOP_D is
begin
P1: process( CK )
begin
	if (CK'event and CK = '1') then
		Q <= D after 0.1 ns;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FLIP_FLOP_D_SCAN is
	port (
		CK : in STD_LOGIC;
		D : in STD_LOGIC;
		SE: in STD_LOGIC;
		SI: in STD_LOGIC;
		Q : out STD_LOGIC
	);
end FLIP_FLOP_D_SCAN;

architecture behav of FLIP_FLOP_D_SCAN is
begin
P1: process( CK )
begin
	if (CK'event and CK = '1') then
		if SE = '0' then
			Q <= D after 0.1 ns;
		else
			Q <= SI after 0.1 ns;
		end if;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FLIP_FLOP_D_RESET is
	port (
		CK : in STD_LOGIC;
		D : in STD_LOGIC;
		RESET : in STD_LOGIC;
		Q : out STD_LOGIC
	);
end FLIP_FLOP_D_RESET;

architecture behav of FLIP_FLOP_D_RESET is
begin
P1: process( CK, RESET )
begin
	if (RESET = '0') then
		Q <= '0';
	elsif (CK'event and CK = '1') then
		Q <= D after 0.1 ns;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FLIP_FLOP_D_RESET_SCAN is
	port (
		CK : in STD_LOGIC;
		D : in STD_LOGIC;
		RESET : in STD_LOGIC;
		SE: in STD_LOGIC;
		SI: in STD_LOGIC;
		Q : out STD_LOGIC
	);
end FLIP_FLOP_D_RESET_SCAN;

architecture behav of FLIP_FLOP_D_RESET_SCAN is
begin
P1: process( CK, RESET )
begin
	if (RESET = '0') then
		Q <= '0';
	elsif (CK'event and CK = '1') then
		if SE = '0' then
			Q <= D after 0.1 ns;
		else
			Q <= SI after 0.1 ns;
		end if;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FLIP_FLOP_D_PRESET is
	port (
		CK : in STD_LOGIC;
		D : in STD_LOGIC;
		PRESET : in STD_LOGIC;
		Q : out STD_LOGIC
	);
end FLIP_FLOP_D_PRESET;

architecture behav of FLIP_FLOP_D_PRESET is
begin
P1: process( CK, PRESET )
begin
	if (PRESET = '0') then
		Q <= '1' after 0.1 ns;
	elsif (CK'event and CK = '1') then
		Q <= D after 0.1 ns;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FLIP_FLOP_D_PRESET_SCAN is
	port (
		CK : in STD_LOGIC;
		D : in STD_LOGIC;
		PRESET : in STD_LOGIC;
		SE: in STD_LOGIC;
		SI: in STD_LOGIC;
		Q : out STD_LOGIC
	);
end FLIP_FLOP_D_PRESET_SCAN;

architecture behav of FLIP_FLOP_D_PRESET_SCAN is
begin
P1: process( CK, PRESET )
begin
	if (PRESET = '0') then
		Q <= '1' after 0.1 ns;
	elsif (CK'event and CK = '1') then
		if SE = '0' then
			Q <= D after 0.1 ns;
		else
			Q <= SI after 0.1 ns;
		end if;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FLIP_FLOP_D_RESET_PRESET is
	port (
		CK : in STD_LOGIC;
		D : in STD_LOGIC;
		RESET : in STD_LOGIC;
		PRESET : in STD_LOGIC;
		Q : out STD_LOGIC
	);
end FLIP_FLOP_D_RESET_PRESET;

architecture behav of FLIP_FLOP_D_RESET_PRESET is
begin
P1: process( CK, RESET, PRESET )
begin
	if( (RESET = '0' and PRESET = '1')
	   or (RESET = '0' and PRESET = '0') ) then
		Q <= '0' after 0.1 ns;
	elsif (PRESET = '0') then
		Q <= '1' after 0.1 ns;
	elsif (CK'event and CK = '1') then
		Q <= D after 0.1 ns;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FLIP_FLOP_D_RESET_PRESET_SCAN is
	port (
		CK : in STD_LOGIC;
		D : in STD_LOGIC;
		RESET : in STD_LOGIC;
		PRESET : in STD_LOGIC;
		SE: in STD_LOGIC;
		SI: in STD_LOGIC;
		Q : out STD_LOGIC
	);
end FLIP_FLOP_D_RESET_PRESET_SCAN;

architecture behav of FLIP_FLOP_D_RESET_PRESET_SCAN is
begin
P1: process( CK, RESET, PRESET )
begin
	if( (RESET = '0' and PRESET = '1')
	   or (RESET = '0' and PRESET = '0') ) then
		Q <= '0' after 0.1 ns;
	elsif (PRESET = '0') then
		Q <= '1' after 0.1 ns;
	elsif (CK'event and CK = '1') then
		if SE = '0' then
			Q <= D after 0.1 ns;
		else
			Q <= SI after 0.1 ns;
		end if;
	end if;
end process;
end behav;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity THREE_STATE_BUF_GATE is
	port (
		I1 : in STD_LOGIC;
		E : in STD_LOGIC;
		O : out STD_LOGIC
	);
end THREE_STATE_BUF_GATE;

architecture behav of THREE_STATE_BUF_GATE is
begin
P1: process( I1, E )
begin
	if E = '1' then
		O <= 'Z' after 0.1 ns;
	else
		O <= I1 after 0.1 ns;
	end if;
end process;
end behav;

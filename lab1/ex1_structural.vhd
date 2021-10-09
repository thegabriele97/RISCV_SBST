library IEEE;

use IEEE.std_logic_1164.all;

entity ex1 is
	port (
		A, B: in  STD_LOGIC;
		S, C: out STD_LOGIC );
end ex1;

architecture structural of ex1 is
	signal net1: STD_LOGIC;
	signal net2: STD_LOGIC;
	signal net3: STD_LOGIC;

	component Nand_Gate is 
		port ( I1, I2: in STD_LOGIC; O: out STD_LOGIC );
	end component;

begin
	U1: Nand_Gate port map (I1 => A,    I2 => B,    O => net1);
	U2: Nand_Gate port map (I1 => A,    I2 => net1, O => net2);
	U3: Nand_Gate port map (I1 => net1, I2 => B,    O => net3);
	U4: Nand_Gate port map (I1 => net2, I2 => net3, O => S);
	U5: Nand_Gate port map (I1 => net1, I2 => net1, O => C);
end structural;

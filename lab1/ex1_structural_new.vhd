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

	signal A_1: std_logic;
	signal A_2: std_logic;

	signal B_1: std_logic;
	signal B_2: std_logic;

	signal net1_1: std_logic;
	signal net1_2: std_logic;
	signal net1_3: std_logic;
	signal net1_4: std_logic;

	component Nand_Gate is 
		port ( I1, I2: in STD_LOGIC; O: out STD_LOGIC );
	end component;

begin
	U1: Nand_Gate port map (I1 => A_1,    I2 => B_1,    O => net1);
	U2: Nand_Gate port map (I1 => A_2,    I2 => net1_1, 	O => net2);
	U3: Nand_Gate port map (I1 => net1_2, I2 => B_2,    O => net3);
	U4: Nand_Gate port map (I1 => net2,   I2 => net3,   O => S);
	U5: Nand_Gate port map (I1 => net1_3, I2 => net1_4, O => C);

	A_1 <= A;
	A_2 <= A;

	B_1 <= B;
	B_2 <= B;

	B_1 <= B;
	B_2 <= B;

	net1_1 <= net1;   
	net1_2 <= net1;
	net1_3 <= net1;
	net1_4 <= net1;

end structural;

library IEEE;

use IEEE.std_logic_1164.all;

entity ex1 is
	port (
		A, B: in  STD_LOGIC;
		S, C: out STD_LOGIC);
end ex1;

architecture dataflow of ex1 is
	signal net1: STD_LOGIC;
	signal net2: STD_LOGIC;
	signal net3: STD_LOGIC;
begin
	net1 <= A    nand B;
	net2 <= A    nand net1;
	net3 <= net1 nand B;
	S    <= net2 nand net3;
	C    <= net1 nand net1;
end dataflow;

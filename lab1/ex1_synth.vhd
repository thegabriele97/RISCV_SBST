
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ex1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ex1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ex1.all;

entity ex1 is

   port( A, B : in std_logic;  S, C : out std_logic);

end ex1;

architecture SYN_dataflow of ex1 is

   component NOR_GATE
      port( I1, I2 : in std_logic;  O : out std_logic);
   end component;
   
   component AND_GATE
      port( I1, I2 : in std_logic;  O : out std_logic);
   end component;
   
   signal N0, n3 : std_logic;

begin
   C <= N0;
   
   U4 : AND_GATE port map( I1 => A, I2 => B, O => N0);
   U5 : NOR_GATE port map( I1 => A, I2 => B, O => n3);
   U6 : NOR_GATE port map( I1 => N0, I2 => n3, O => S);

end SYN_dataflow;

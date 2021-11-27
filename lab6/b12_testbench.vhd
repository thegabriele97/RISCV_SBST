
library std;
use std.env.all;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

entity b12_testbench is
end b12_testbench;


architecture tb of b12_testbench is

    component b12
        port (clock     : in std_logic;
              reset     : in std_logic;
              start     : in std_logic;
              k         : in std_logic_vector(3 downto 0);
              nl        : out std_logic_vector(3 downto 0);
              nloss     : out std_logic;
              speaker   : out std_logic);
    end component;

    component lfsr
        generic (N    : integer;
                 SEED : std_logic_vector(N downto 0));
        port (clk   : in std_logic;
              reset : in std_logic;
              q     : out std_logic_vector(N downto 0));
    end component;

	constant clock_t1      : time := 50 ns;
	constant clock_t2      : time := 30 ns;
	constant clock_t3      : time := 20 ns;
	constant apply_offset  : time := 0 ns;
	constant apply_period  : time := 100 ns;
	constant strobe_offset : time := 40 ns;
	constant strobe_period : time := 100 ns;


	signal tester_clock : std_logic := '0';

    signal lfsr_out   : std_logic_vector(10 downto 0);
    signal lfsr_clock : std_logic := '0';
    signal lfsr_reset : std_logic;
    signal dut_clock  : std_logic := '0';
    signal dut_reset  : std_logic;

    -- DUT outputs
    signal nl         : std_logic_vector(3 downto 0);
    signal nloss      : std_logic;
    signal speaker    : std_logic;

begin

    stimuli : lfsr
    generic map (N => 10,
                 SEED => "00000000001")
    port map (clk => lfsr_clock,
              reset => lfsr_reset,
              q => lfsr_out);

    dut : b12
    port map (clock    => dut_clock,
              reset    => dut_reset,
              start    => lfsr_out(7),
              k(3)     => lfsr_out(3),
              k(2)     => lfsr_out(2),
              k(1)     => lfsr_out(1),
              k(0)     => lfsr_out(0),
              -- k        => lfsr_out(5 downto 2),
              nl       => nl,
              nloss    => nloss,
              speaker  => speaker);

-- ***** CLOCK/RESET ***********************************

	clock_generation : process
	begin
		loop
			wait for clock_t1; tester_clock <= '1';
			wait for clock_t2; tester_clock <= '0';
			wait for clock_t3;
		end loop;
	end process;

-- dut  ___/----\____ ___/----\____ ___/----\____ ___
-- lfsr /----\____ ___/----\____ ___/----\____ ___/--

    dut_clock <= transport tester_clock after apply_period;
    lfsr_clock <= transport tester_clock after apply_period - clock_t1 + apply_offset;

    dut_reset <= '0', '1' after clock_t1, '0' after clock_t1 + clock_t2;
    lfsr_reset <= '1', '0' after clock_t1 + clock_t2;



-- ***** MONITOR **********

    monitor : process(nl, nloss, speaker)
		function vec2str( input : std_logic_vector ) return string is
			variable rline : line;
		begin
			write( rline, input );
			return rline.all;
		end vec2str;
    begin
        std.textio.write(std.textio.output, "nl:" & vec2str(nl) & " nloss:" & std_logic'image(nloss) & " speaker:" & std_logic'image(speaker) & LF);
    end process;

end tb;

configuration cfg_b12_testbench of b12_testbench is
    for tb
    end for;
end cfg_b12_testbench;

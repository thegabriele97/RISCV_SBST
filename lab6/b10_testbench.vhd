
library std;
use std.env.all;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

entity b10_testbench is
end b10_testbench;


architecture tb of b10_testbench is

    component b10
        port (r_button : in std_logic;
              g_button : in std_logic;
              key      : in std_logic;
              start    : in std_logic;
              reset    : in std_logic;
              test     : in std_logic;
              cts      : out std_logic;
              ctr      : out std_logic;
              rts      : in std_logic;
              rtr      : in std_logic;
              clock    : in std_logic;
              v_in     : in std_logic_vector(3 downto 0);
              v_out    : out std_logic_vector(3 downto 0));
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
    signal v_out      : std_logic_vector(3 downto 0);
    signal cts        : std_logic;
    signal ctr        : std_logic;

begin

    stimuli : lfsr
    generic map (N => 10,
                 SEED => "00000000001")
    port map (clk => lfsr_clock,
              reset => lfsr_reset,
              q => lfsr_out);

    dut : b10
    port map (r_button => lfsr_out(10),
              g_button => lfsr_out(9),
              key      => lfsr_out(8),
              start    => lfsr_out(7),
              reset    => dut_reset,
              test     => lfsr_out(6),
              cts      => cts,
              ctr      => ctr,
              rts      => lfsr_out(5),
              rtr      => lfsr_out(4),
              clock    => dut_clock,
              v_in     => lfsr_out(3 downto 0),
              v_out    => v_out);

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

    monitor : process(v_out, cts, ctr)
		function vec2str( input : std_logic_vector ) return string is
			variable rline : line;
		begin
			write( rline, input );
			return rline.all;
		end vec2str;
    begin
        std.textio.write(std.textio.output, "v_out:" & vec2str(v_out) & " cts:" & std_logic'image(cts) & " ctr:" & std_logic'image(ctr) & LF);
    end process;

end tb;

configuration cfg_b10_testbench of b10_testbench is
    for tb
    end for;
end cfg_b10_testbench;

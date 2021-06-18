	component unsaved is
		port (
			clk_clk                       : in  std_logic                     := 'X';             -- clk
			reset_reset_n                 : in  std_logic                     := 'X';             -- reset_n
			clock_clk                     : in  std_logic                     := 'X';             -- clk
			rest_reset                    : in  std_logic                     := 'X';             -- reset
			vga_stream_sync_data          : in  std_logic_vector(29 downto 0) := (others => 'X'); -- data
			vga_stream_sync_startofpacket : in  std_logic                     := 'X';             -- startofpacket
			vga_stream_sync_endofpacket   : in  std_logic                     := 'X';             -- endofpacket
			vga_stream_sync_valid         : in  std_logic                     := 'X';             -- valid
			vga_stream_sync_ready         : out std_logic                                         -- ready
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			clk_clk                       => CONNECTED_TO_clk_clk,                       --             clk.clk
			reset_reset_n                 => CONNECTED_TO_reset_reset_n,                 --           reset.reset_n
			clock_clk                     => CONNECTED_TO_clock_clk,                     --           clock.clk
			rest_reset                    => CONNECTED_TO_rest_reset,                    --            rest.reset
			vga_stream_sync_data          => CONNECTED_TO_vga_stream_sync_data,          -- vga_stream_sync.data
			vga_stream_sync_startofpacket => CONNECTED_TO_vga_stream_sync_startofpacket, --                .startofpacket
			vga_stream_sync_endofpacket   => CONNECTED_TO_vga_stream_sync_endofpacket,   --                .endofpacket
			vga_stream_sync_valid         => CONNECTED_TO_vga_stream_sync_valid,         --                .valid
			vga_stream_sync_ready         => CONNECTED_TO_vga_stream_sync_ready          --                .ready
		);


-- unsaved.vhd

-- Generated using ACDS version 18.0 614

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity VGA_controler is
	port (
		clk_clk                       : in  std_logic                     := '0';             --             clk.clk
		clock_clk                     : in  std_logic                     := '0';             --           clock.clk
		reset_reset_n                 : in  std_logic                     := '0';             --           reset.reset_n
		rest_reset                    : in  std_logic                     := '0';             --            rest.reset
		vga_stream_sync_data          : in  std_logic_vector(29 downto 0) := (others => '0'); -- vga_stream_sync.data
		vga_stream_sync_startofpacket : in  std_logic                     := '0';             --                .startofpacket
		vga_stream_sync_endofpacket   : in  std_logic                     := '0';             --                .endofpacket
		vga_stream_sync_valid         : in  std_logic                     := '0';             --                .valid
		vga_stream_sync_ready         : out std_logic                                         --                .ready
	);
end entity unsaved;

architecture rtl of unsaved is
	component unsaved_video_vga_controller_0 is
		port (
			clk           : in  std_logic                     := 'X';             -- clk
			reset         : in  std_logic                     := 'X';             -- reset
			data          : in  std_logic_vector(29 downto 0) := (others => 'X'); -- data
			startofpacket : in  std_logic                     := 'X';             -- startofpacket
			endofpacket   : in  std_logic                     := 'X';             -- endofpacket
			valid         : in  std_logic                     := 'X';             -- valid
			ready         : out std_logic;                                        -- ready
			VGA_CLK       : out std_logic;                                        -- export
			VGA_HS        : out std_logic;                                        -- export
			VGA_VS        : out std_logic;                                        -- export
			VGA_BLANK     : out std_logic;                                        -- export
			VGA_SYNC      : out std_logic;                                        -- export
			VGA_R         : out std_logic_vector(7 downto 0);                     -- export
			VGA_G         : out std_logic_vector(7 downto 0);                     -- export
			VGA_B         : out std_logic_vector(7 downto 0)                      -- export
		);
	end component unsaved_video_vga_controller_0;

begin

	video_vga_controller_0 : component unsaved_video_vga_controller_0
		port map (
			clk           => clock_clk,                     --                clk.clk
			reset         => rest_reset,                    --              reset.reset
			data          => vga_stream_sync_data,          --    avalon_vga_sink.data
			startofpacket => vga_stream_sync_startofpacket, --                   .startofpacket
			endofpacket   => vga_stream_sync_endofpacket,   --                   .endofpacket
			valid         => vga_stream_sync_valid,         --                   .valid
			ready         => vga_stream_sync_ready,         --                   .ready
			VGA_CLK       => open,                          -- external_interface.export
			VGA_HS        => open,                          --                   .export
			VGA_VS        => open,                          --                   .export
			VGA_BLANK     => open,                          --                   .export
			VGA_SYNC      => open,                          --                   .export
			VGA_R         => open,                          --                   .export
			VGA_G         => open,                          --                   .export
			VGA_B         => open                           --                   .export
		);

end architecture rtl; -- of unsaved

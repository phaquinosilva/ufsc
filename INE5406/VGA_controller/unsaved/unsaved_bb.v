
module unsaved (
	clk_clk,
	reset_reset_n,
	clock_clk,
	rest_reset,
	vga_stream_sync_data,
	vga_stream_sync_startofpacket,
	vga_stream_sync_endofpacket,
	vga_stream_sync_valid,
	vga_stream_sync_ready);	

	input		clk_clk;
	input		reset_reset_n;
	input		clock_clk;
	input		rest_reset;
	input	[29:0]	vga_stream_sync_data;
	input		vga_stream_sync_startofpacket;
	input		vga_stream_sync_endofpacket;
	input		vga_stream_sync_valid;
	output		vga_stream_sync_ready;
endmodule

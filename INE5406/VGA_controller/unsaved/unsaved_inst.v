	unsaved u0 (
		.clk_clk                       (<connected-to-clk_clk>),                       //             clk.clk
		.reset_reset_n                 (<connected-to-reset_reset_n>),                 //           reset.reset_n
		.clock_clk                     (<connected-to-clock_clk>),                     //           clock.clk
		.rest_reset                    (<connected-to-rest_reset>),                    //            rest.reset
		.vga_stream_sync_data          (<connected-to-vga_stream_sync_data>),          // vga_stream_sync.data
		.vga_stream_sync_startofpacket (<connected-to-vga_stream_sync_startofpacket>), //                .startofpacket
		.vga_stream_sync_endofpacket   (<connected-to-vga_stream_sync_endofpacket>),   //                .endofpacket
		.vga_stream_sync_valid         (<connected-to-vga_stream_sync_valid>),         //                .valid
		.vga_stream_sync_ready         (<connected-to-vga_stream_sync_ready>)          //                .ready
	);


module top_de10lite_FPGA (input CLOCK_50,
                           input [1:0] KEY,
									output [9:0] LEDR,
									output [6:0] HEX0,
									output [6:0] HEX1,
									output [6:0] HEX2,
									output [6:0] HEX3
								   	);
wire reset;
wire manual_clk;

wire [31:0] pc_value;
wire [31:0] alu_value;

assign reset = ~KEY[0];

button_clk bc (.clk (CLOCK_50),
               .button(~KEY[1]),
					.pulse(manual_clk) );
risc_top  cpu(
    .clk(manual_clk),
    .reset(reset),
	 .pc1(pc_value),
	.alu_output(alu_value) );
	
//assign LEDR = 10'b1010101010  ; 
assign LEDR = pc_value[9:0] ;

hex_decoder h0 (alu_value [3:0], HEX0);
hex_decoder h1 (alu_value [7:4], HEX1);
hex_decoder h2 (alu_value [11:8], HEX2);
hex_decoder h3 (alu_value [15:12], HEX3);
endmodule	

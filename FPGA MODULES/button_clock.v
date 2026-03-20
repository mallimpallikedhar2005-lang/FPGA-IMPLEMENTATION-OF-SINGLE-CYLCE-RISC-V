module button_clk (input clk, input button, output reg pulse);
reg [19:0] counter ;
reg button_sync0, button_sync1;
reg debounced;
reg prev;

always @ (posedge clk) begin
button_sync0 <= button;
button_sync1 <= button_sync0;

if (button_sync1 == debounced)
   counter <= 0;
else begin
   counter <= counter + 1;
	if (counter == 20'd1_000_000)
	begin
	debounced <= button_sync1;
	counter <=0;
	end
	end
prev <= debounced;
pulse <= (prev == 1'b1) && (debounced == 1'b0);
end

endmodule 
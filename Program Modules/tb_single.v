module tb_single;
reg clk;
reg reset;
risc_top dut ( .clk(clk), .reset(reset) );
initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
reset = 1;
#30
reset = 0;
end 

initial begin
#1000
$stop;
end
endmodule

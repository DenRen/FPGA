`timescale 1 ns / 100 ps

module testbench ();

reg clk = 1'b0;
always begin
    #1 clk = ~clk;
end

wire out_wire_repeate, out_wire_invert;

repeater repeater (.in_wire (clk), .out_wire (out_wire_repeate));
inverter inverter (.in_wire (clk), .out_wire (out_wire_invert));

initial begin
    $dumpvars;
    $display ("Eee, I'm started.");
    $display ("Repeate and invert");
    #10 $finish;
end

endmodule
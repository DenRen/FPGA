module repeater (
    input wire in_wire,
    output wire out_wire
);

assign out_wire = in_wire;

endmodule

module inverter (
    input wire in_wire,
    output wire out_wire
);

assign out_wire = ~in_wire;

endmodule
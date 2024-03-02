`timescale 1ns / 1ps
module imem (
        input [5:0] a,
        output [31:0] rd);
reg [31:0] RAM[0:32];
initial
    begin
        $readmemh ("sim/memfile.dat",RAM);
    end
assign rd = RAM[a];
endmodule

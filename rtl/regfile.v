`timescale 1ns / 1ps

module regfile(
    input clk,
    input we3,
    input [4:0] ra1,
    input [4:0] ra2,
    input [4:0] wa3,
    input [31:0] wd3,
    output [31:0] rd1,
    output [31:0] rd2
    );
    reg [31:0] registerFile [31:0];
    always @(posedge clk)
    begin
    if (we3)
        registerFile[wa3] <= wd3;
    end
    
    assign rd1 = (ra1 == 0)?32'b0: registerFile[ra1];
    assign rd2 = (ra2 == 0)?32'b0: registerFile[ra2];

    
endmodule

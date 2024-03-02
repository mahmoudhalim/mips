`timescale 1ns / 1ps

module alu(
input [31:0] srcA,
input [31:0] srcB,
input [2:0] aluControl,
output reg [31:0] aluOut,
output zero
    );
    always @(*) begin
        
    case (aluControl)
        3'b000: aluOut = srcA & srcB;
        3'b001: aluOut = srcA | srcB;
        3'b010: aluOut = srcA + srcB;
        3'b011: aluOut = 32'bx;
        3'b100: aluOut = srcA & ~srcB;
        3'b101: aluOut = srcA | ~srcB;
        3'b110: aluOut = srcA - srcB;
        3'b111: aluOut = (srcA < srcB)? 32'b1 : 32'b0;
    endcase
       
    end
    assign zero = (aluOut == 32'b0);
endmodule

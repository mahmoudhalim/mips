`timescale 1ns / 1ps
module aludec(
    input [5:0] funct,
    input [1:0] aluop,
    output reg [2:0] aluControl
    );
    
    always @(*) begin
    case(aluop)
    2'b00:aluControl<=3'b010;
    2'b01:aluControl<=3'b110;
    default: case(funct)
    6'b100000: aluControl <= 3'b010;
    6'b100010: aluControl <= 3'b110;
    6'b100100: aluControl <= 3'b000;
    6'b100101: aluControl <= 3'b001;
    6'b101010: aluControl <= 3'b111;
    default:   aluControl <= 3'bxxx;
    endcase
    endcase 
    end
    
endmodule

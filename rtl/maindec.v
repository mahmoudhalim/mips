`timescale 1ns / 1ps

module maindec(
        input [5:0] op,
        output memtoreg, memwrite,
        output branch, alusrc,
        output regdst, regwrite,
        output jump,
        output [1:0] aluop);

        reg [8:0] control;
        assign {regwrite, regdst, alusrc,
         branch, memwrite, memtoreg,
          jump, aluop} = control;
          
          always @(*)
          case (op)
          6'b000000: control<= 9'b110000010; //R-type
          6'b100011: control<= 9'b101001000; //lw
          6'b101011: control<= 9'b001010000; //sw
          6'b000100: control<= 9'b000100001; //beq
          6'b001000: control<= 9'b101000000; //addi
          6'b000010: control<= 9'b000000100; //j
          default:   control<= 9'bxxxxxxxxx;
          endcase
endmodule

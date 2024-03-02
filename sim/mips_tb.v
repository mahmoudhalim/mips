`timescale 1ns / 1ps
`include "rtl/top.v"
module mips_tb();
    reg clk;
    reg reset;
    
    wire [31:0] writedata, dataadr;
    wire memwrite;
    
    top dut(clk, reset, writedata, dataadr, memwrite);
    
    initial
    begin
    reset = 1; # 22;
    reset =0;
    #1500
    $stop;
    end
    
    always
        begin
            clk <= 1; #5 clk<= 0; #5;
        end
        
    always @(negedge clk)
        begin
            // $display("#%d data=%d",$time, dataadr);
            if(memwrite) begin
            if(dataadr === 84 & writedata === 7) begin
            $display("Simulation succeeded");
            $stop;
            end else if (dataadr !== 80) begin
            $display("!Simulation failed");
            $stop;
            end
            end
            end

endmodule

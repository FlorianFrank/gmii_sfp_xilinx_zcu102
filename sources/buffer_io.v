`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2024 12:47:42 PM
// Design Name: 
// Module Name: buffer_io
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module buffer_io(
        input wire clk,
        input wire rxp_in,
        input wire rxn_in,
        input wire txp_in,
        input wire txn_in,
        output reg rxp_out,
        output reg rxn_out,
        output reg txp_out,
        output reg txn_out
    );
    
        always @(posedge clk)begin
            rxp_out <= rxp_in;
            rxn_out <= rxn_in;
            txp_out <= txp_in;
            txn_out <= txn_in;
           end
    

    
endmodule


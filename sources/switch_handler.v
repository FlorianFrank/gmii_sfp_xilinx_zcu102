`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2024 09:16:45 AM
// Design Name: 
// Module Name: SwitchHandler
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


module switch_handler(
    input wire GPIO_DIP_SW7,
    input wire GPIO_DIP_SW6,
    input wire GPIO_DIP_SW5,
    input wire GPIO_DIP_SW4,
    input wire GPIO_DIP_SW3,
    input wire GPIO_DIP_SW2,
    input wire GPIO_DIP_SW1,
    input wire GPIO_DIP_SW0,
    
    output wire[7:0] out,
    output wire sfp_tx
    );
    
    assign out[7] = GPIO_DIP_SW7;
    assign out[6] = GPIO_DIP_SW6;
    assign out[5] = GPIO_DIP_SW5;
    assign out[4] = GPIO_DIP_SW4;
    assign out[3] = GPIO_DIP_SW3;
    assign out[2] = GPIO_DIP_SW2;
    assign out[1] = GPIO_DIP_SW1;
    assign out[0] = GPIO_DIP_SW0;
    
    assign sfp_tx = GPIO_DIP_SW0;
endmodule



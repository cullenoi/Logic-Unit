`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 11:37:13
// Design Name: 
// Module Name: SetA
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


module Set_Var(
input wire [5:0] x,
output wire [5:0]Y);
                    //Loads all inputs into the output wire pretty explanitory
  assign Y[0] =x[0];
   assign   Y[1] =x[1];
   assign   Y[2] =x[2];
   assign  Y[3] =x[3];
  assign Y[4] =x[4];
  assign Y[5] =x[5];


endmodule

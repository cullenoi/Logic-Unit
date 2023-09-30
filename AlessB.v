`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 15:11:34
// Design Name: 
// Module Name: AlessB
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


module AlessB(

input wire[5:0] a , b,
output wire gr );
wire [5:0] o,an,notb,agb,e;
wire c;

// call all parts needed from 2bit. (eq 4)
eq4 p0 (.a(a[0]) , .b(b[0]),.notb(notb[0]), .agb(agb[0]) , .e(e[0]));// The equal function  Reused for Lab B
eq4 p1 (.a(a[1]) , .b(b[1]),.notb(notb[1]), .agb(agb[1]) , .e(e[1]));
eq4 p2 (.a(a[2]) , .b(b[2]),.notb(notb[2]), .agb(agb[2]) , .e(e[2]));
eq4 p3 (.a(a[3]) , .b(b[3]),.notb(notb[3]), .agb(agb[3]) , .e(e[3]));
eq4 p4 (.a(a[4]) , .b(b[4]),.notb(notb[4]), .agb(agb[4]) , .e(e[4]));
eq4 p5 (.a(a[5]) , .b(b[5]),.notb(notb[5]), .agb(agb[5]) , .e(e[5]));


   //a>b --> A3B3+E3A2B2'+E3E2A1B1'+E3E2E1A0B0
   //^^ LOGIC FUNCTION BEING USED TO COMPUTE IT

and g1 (o[0],agb[0],e[1],e[2],e[3],e[4],e[5]);
//g1
and g2 (o[1],agb[1],e[2],e[3],e[4],e[5]);
//g3
and g3 (o[2],agb[2],e[3],e[4],e[5]);
//g4
and g4 (o[3],agb[3],e[4],e[5]);
//g5
and g5 (o[4],agb[4],e[5]);
//g6
or g6 (c,agb[5],o[4],o[3],o[2],o[1],o[0]);
not g7 (gr,c); //INVERTS the output


//Not needed for this assignment
//assign eq = e[0]*e[1]*e[2]*e[3]*e[4]*e[5]*e[6]*e[7]; // The = function..

endmodule
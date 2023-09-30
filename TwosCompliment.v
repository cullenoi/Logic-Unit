`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 14:22:36
// Design Name: 
// Module Name: TwosCompliment
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


module TwosComp(
input wire [5:0] x,
output wire [5:0] XComp);

 wire sel =1'b1;
  wire y =1'b0; //set y for adder to be 0 so its just x +1

wire [5:0] c;
wire [5:0] xc;
   xor g0 (xc[0],x[0],sel);//selecting Taken from the adder function
   xor g1 (xc[1],x[1],sel);
   xor g2 (xc[2],x[2],sel);
   xor g3 (xc[3],x[3],sel);
   xor g4 (xc[4],x[4],sel);
   xor g5 (xc[5],x[5],sel);
   //FLIPS BITS AND ADDS SEL (which is 1)
   //
  //calling functions into blue box// adder function
 FullAdder bit0(.a(y),.b(xc[0]),.cin(sel),.cout(c[0]),.s(XComp[0])); //Performs twos compliment function and stores the value in XCOMP
 FullAdder bit1(.a(y),.b(xc[1]),.cin(c[0]),.cout(c[1]),.s(XComp[1])); 
 FullAdder bit2(.a(y),.b(xc[2]),.cin(c[1]),.cout(c[2]),.s(XComp[2])); 
 FullAdder bit3(.a(y),.b(xc[3]),.cin(c[2]),.cout(c[3]),.s(XComp[3])); 
 FullAdder bit4(.a(y),.b(xc[4]),.cin(c[3]),.cout(c[4]),.s(XComp[4])); 
 FullAdder bit5(.a(y),.b(xc[5]),.cin(c[4]),.cout(c[5]),.s(XComp[5])); 

   
endmodule


module BitXnor(
input wire [5:0] A,B,
output wire [5:0] XN );
//XNOR Logic function OUT put stored and function left
xnor g1(XN[0],A[0],B[0]);
xnor g2(XN[1],A[1],B[1]);
xnor g3(XN[2],A[2],B[2]);
xnor g4(XN[3],A[3],B[3]);
xnor g5(XN[4],A[4],B[4]);
xnor g6(XN[5],A[5],B[5]);

endmodule

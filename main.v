`timescale 1ns / 1ps


module main(
 input wire [2:0] fxn,
 input wire [5:0] a,b,
 output wire Cled,Vled,
// output reg ao,bo,co,
 output wire [2:0]f0,
 output wire [5:0] OUT);
 
 
 
 wire [5:0] Ao,Bo,AComp,BComp,XNOR,SUM,SUM2;
 wire L,V,C,V2,C2;
 
 reg plus =1'b0;//set as constants for adders/ subtractor functions
 reg minus =1'b1;

//if(abc =000)
//always @(fxn)
//begin
////TODO PUT IN FUNCTION
//    if(fxn ==0) begin
//
    Set_Var fn1 (.x(a),.Y(Ao));
    Set_Var fn2 (.x(b),.Y(Bo));
    TwosComp fn3 (.x(Ao),.XComp(AComp));
    TwosComp fn4 (.x(Bo),.XComp(BComp));
    AlessB fn5 (.a(Ao),.b(Bo),.gr(L));
    BitXnor fn6 (.XN(XNOR),.A(Ao),.B(Bo));
    bit_ripple_adder fn7 (.x(Ao),.y(Bo),.overflow(V),.c_out(C),.sel(plus),.sum(SUM));
    bit_ripple_adder fn8 (.x(Ao),.y(Bo),.overflow(V2),.c_out(C2),.sel(minus),.sum(SUM2));
//    Option fn9(.Ao(Ao),.fxn(fxm),.Bo(Bo),.AComp(AComp),.BComp(BComp),.XNOR(XNOR),.L(L),.SUM(SUM),.SUM2(SUM2),.V(V),.C(C),.V2(V2),.C2(C2),.o(OUT),.Co(Cled),.Vo(Vled));
//    //Put in function
// ///a+b (full adder where setter is 0)
////set sel to 0
reg[5:0] out;
reg vled,cled;

    
    always @ * begin
        case (fxn)
            3'b000:
            begin
             out = Ao;
             vled = 0;
             cled =0; 
            end
            3'b001: 
             begin
             out = Bo;
             vled = 0;
             cled =0; 
            end
            3'b010: 
             begin
             out = AComp;
             vled = 0;
             cled =0; 
            end
            3'b011: 
             begin
             out = BComp;
             vled = 0;
             cled =0; 
            end
            3'b100:
            begin
             out = L;
             vled = 0;
             cled =0; 
            end
            3'b101: 
            begin  
             out = XNOR;
             vled = 0;
             cled =0; 
            end
            3'b110: 
            begin
            out = SUM;
            vled = V;
            cled =C; 
            end
            3'b111: 
            begin
            out = SUM2;
            vled = V2;
            cled =C2; 
            end
        endcase
    end
    
    assign OUT = out;
    assign Vled = vled;
    assign Cled= cled;
////abc =111
////a-b (set sel to 1



//end
assign f0 =fxn;



endmodule



module Option(
input wire [2:0] fxn,
input wire [5:0] Ao,Bo,AComp,BComp,XNOR,SUM,SUM2,
input wire L,C,C2,V,V2,
output wire Vo,Co,
output wire [5:0] o);
reg [5:0] oreg;
reg vled,cled;
//initial
//begin
//oreg =0;//RESET Every pin after
//vled =0;
//cled =0;
//end
always @ *
begin
    if(fxn == 3'b000)
    begin
    oreg = Ao;

    end
    else  if(fxn == 3'b001)
    begin
    oreg =Bo;

    end
     else if(fxn == 3'b010)
    begin
    oreg = AComp;

    end
    else if(fxn == 3'b011)
    begin
    oreg = BComp;
    end
     
    else if(fxn == 3'b100)
    begin
    oreg = XNOR;//will set all to zero
    oreg = L;//Will set all to zero
    end
    else if(fxn == 3'b101)
    begin
    oreg = XNOR;//will set all to zero

    end
    else if(fxn == 3'b110)
    begin
    oreg = SUM;
    vled =V ;
    cled = C;
    //ADD OVERFLOW AND CARRY OPTION
        
    end
    else if(fxn == 3'b111)
    begin
    oreg = SUM2;
    //ADD OVERFLOW AND CARRY OPTION
    vled =V2;
    cled = C2;
    end
//    else
//    begin
//       vled =0;
//       cled =0;
//       oreg =0;
//    end
    
end


assign o = oreg; //Sorts out the display
assign Vo =vled;
assign Co =cled;
endmodule
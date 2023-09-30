module eq4
   ( 
   //a>b --> A3B3+E3A2B2'+E3E2A1B1'+E3E2E1A0B0

    input  wire a, b,			// a adn b are the two 2-bit numbers to compare
    output wire agb,notb,e);
    
    not(notb,b);
    and(agb,notb,a);    

      eq1 eq_bit0_unit (.i0(a), .i1(b), .eq(e));

endmodule
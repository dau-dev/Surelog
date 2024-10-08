
module top ();
parameter type TPTOP = int;

 TPTOP DATATOP;

  mid #(.TP0(TPTOP)) u0();

endmodule

module mid #(parameter type TP0 = logic) ();
 TP0 DATA0;
 bottom #(.TP1(TP0)) u1();
 bottom #(.TP1(int), .SIZE(20)) u2(); 
 bottom #(int, 1120, int, 1130) u3(); 
 bottom #(int, 1140, int, UNDEF) u4(); 
endmodule

module bottom #(parameter type TP1 = logic, parameter SIZE=10, parameter type TP2 = int, parameter int PPP = 1150);
    TP1 DATA1;
    logic [SIZE:0] a;
    TP2 DATA2;
endmodule



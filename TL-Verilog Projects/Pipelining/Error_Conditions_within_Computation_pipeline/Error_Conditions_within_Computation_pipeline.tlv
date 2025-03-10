\m5_TLV_version 1d: tl-x.org
\m5
\SV
	m5_makerchip_module
\TLV
   |comp
      @1 
         $err1 = $illegal_op | $bad_input;
      @2
         $err1
      @3
         $err2 = $err1 | $over_flow;
      @4
         $err2
      @5
         $err2
      @6
         $err3 = $err2 | $div_by_zero;
\SV
   endmodule

\m4_TLV_version 1d: tl-x.org
\SV
   m5_makerchip_module
\TLV
   $out = $sel[0] ? $in1 : $sel[1] ? $in2 : $sel[2] ? $in3 : $in4;
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

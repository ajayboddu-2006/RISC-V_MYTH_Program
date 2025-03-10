\m5_TLV_version 1d: tl-x.org
\m5
\SV
   
   m5_makerchip_module  
\TLV
   $mul[3:0] = $val1[1:0] * $val2[1:0];
   $div[3:0] = $val1[1:0] / $val2[1:0];
   $sub[3:0] = $val1[1:0] - $val2[1:0];
   $add[3:0] = $val1[1:0] + $val2[1:0];
   $result[3:0] = $sel[0] ? $add : $sel[1] ? $sub : $sel[2] ? $mul : $div;
   
   $val2[1:0] = *reset ? 0 : >>1$result;
   *passed = cyc_cnt > 30;
   *failed = 1'b0;
\SV
   endmodule

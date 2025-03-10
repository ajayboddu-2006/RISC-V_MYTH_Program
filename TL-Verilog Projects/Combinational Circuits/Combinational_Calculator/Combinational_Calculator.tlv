\m5_TLV_version 1d: tl-x.org
\m5
\SV
   m5_makerchip_module  
\TLV
   $mul[3:0] = $a[1:0] * $b[1:0];
   $div[3:0] = $a[1:0] / $b[1:0];
   $sub[3:0] = $a[1:0] - $b[1:0];
   $add[3:0] = $a[1:0] + $b[1:0];
   $result = $sel[0] ? $add : $sel[1] ? $sub : $sel[2] ? $mul : $div;
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

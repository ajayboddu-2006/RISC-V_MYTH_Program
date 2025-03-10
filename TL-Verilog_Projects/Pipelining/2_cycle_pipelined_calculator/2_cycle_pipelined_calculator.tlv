\m5_TLV_version 1d: tl-x.org
\m5
\SV
   m5_makerchip_module  
\TLV
   |calc
      @1
         $reset = *reset;
         $op[2:0] = $rand1[2:0];
         $mul[3:0] = $val1[1:0] * $val2[1:0];
         $div[3:0] = $val1[1:0] / $val2[1:0];
         $sub[3:0] = $val1[1:0] - $val2[1:0];
         $add[3:0] = $val1[1:0] + $val2[1:0];
         $val2[1:0] = >>2$result;
         $cnt[15:0] = $reset ? 0 : >>1$cnt + 1;
      @2
         $valid = $reset | (!$cnt);
         $result[3:0] = ($valid) ? 0 : $op[0] ? $add : $op[1] ? $sub : $op[2] ? $mul : $div;
   *passed = *cyc_cnt > 30;
   *failed = 1'b0;
\SV
   endmodule

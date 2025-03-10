\m5_TLV_version 1d: tl-x.org
\m5
\SV
   m5_makerchip_module
\TLV
   |calc
      @1
         $valid = $reset ? '0 : >>1$valid + 1;
         $valid_reset = $valid || $reset;
         ?$valid
            $val1[31:0] = >>2$out[3:0];
            $val2[31:0] = $rand2[3:0];
            $op[1:0] = $rand3[1:0];
            $sum[31:0] = $val1 + $val2;
            $diff[31:0] = $val1 - $val2;
            $prod[31:0] = $val1 * $val2;
            $quot[31:0] = $val1 / $val2;
      @2
         $out[31:0] = $valid_reset == 1 ? 
                                        $op[1:0] == 0 ? $sum:
                                        $op[1:0] == 1 ? $diff:
                                        $op[1:0] == 2? $prod :
                                        $quot : >>1$out;
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

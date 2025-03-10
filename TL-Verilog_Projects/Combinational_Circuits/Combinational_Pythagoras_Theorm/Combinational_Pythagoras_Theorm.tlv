\m4_TLV_version 1d: tl-x.org
\SV
   `include "sqrt32.v"
   m5_makerchip_module
\TLV
   $aa_sq[7:0] = $aa[3:0] ** 2;
   $bb_sq[7:0] = $bb[3:0] ** 2;
   $cc_sq[8:0] = $aa_sq + $bb_sq;
   $cc[4:0] = sqrt($cc_sq);
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

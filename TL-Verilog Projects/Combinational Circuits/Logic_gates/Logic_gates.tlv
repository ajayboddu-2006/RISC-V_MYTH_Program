\m5_TLV_version 1d: tl-x.org
\m5
\SV
   m5_makerchip_module 
\TLV
  $out_and = $in1 & $in2;
  $out_or = $in1 | $in2;
  $out_not = !$in1;
  $out_nand = !($in1 & $in2);
  $out_nor = !($in1 | $in2);
  $out_xor = $in1 ^ $in2;
  $out_xnor = !($in1 ^ $in2);
\SV
   endmodule

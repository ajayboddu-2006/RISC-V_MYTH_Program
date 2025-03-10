\m5_TLV_version 1d: tl-x.org
\m5
\SV
   m5_makerchip_module
\TLV
   $num[15:0] = *reset ? 1 : >>1$num + 1;
   *passed = cyc_cnt > 30;
\SV
   endmodule

wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/team12/2017summer/src/tb/synchro.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 191652.333637 200001.544211
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 49450.131272
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetCursor -win $_nWave1 100700.631401 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 121224.836371 -snap {("G1" 11)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 121000.000000
wvSetCursor -win $_nWave1 91458.737935
wvZoom -win $_nWave1 79456.278889 82456.893650
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetRadix -win $_nWave1 -format Ascii
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 100173.461401 101553.798111
wvSetCursor -win $_nWave1 100881.612579
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 121373.933765 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 282023.795460 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 302025.655711 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 280436.346234 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 261704.445365 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 282341.285306 -snap {("G1" 15)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 296310.838497 385207.995166
wvZoom -win $_nWave1 319234.004682 325463.994098
wvSetCursor -win $_nWave1 321915.195095
wvSetCursor -win $_nWave1 321937.584994
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 381879.412399 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382434.938005 -snap {("G1" 14)}
wvZoom -win $_nWave1 379286.959569 384564.452830
wvSetCursor -win $_nWave1 382193.611293 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382288.444955 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382207.836342 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382269.478222 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382193.611293 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382278.961588 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382198.352976 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382354.828518 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382198.352976 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382297.928321 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382188.869610 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 382250.511490 -snap {("G1" 14)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 397245.250674
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 376298.231806 389390.118598
wvSetCursor -win $_nWave1 382720.666836 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 382379.548492 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 382720.666836 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 382344.260387 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 382708.904135 -snap {("G2" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 376298.231806 401733.897574
wvSetCursor -win $_nWave1 382285.782957
wvSetCursor -win $_nWave1 382491.462195
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 382697.141433 -snap {("G2" 5)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 261340.522487 261957.560202
wvSetCursor -win $_nWave1 261683.690812
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 197758.704054 203151.824343
wvSetCursor -win $_nWave1 201407.418859
wvSetCursor -win $_nWave1 201373.499863
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 221416.998727 -snap {("G1" 9)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 281662.592992 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 221813.967655 -snap {("G1" 7)}
wvZoom -win $_nWave1 216577.212938 227050.722372
wvSetCursor -win $_nWave1 221442.266287
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 377420.393531 387893.902965
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/tmp_r\[34:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/tmp_r\[34:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 385108.495245
wvSetCursor -win $_nWave1 385117.905406
wvSetCursor -win $_nWave1 385127.315567
wvSetCursor -win $_nWave1 385127.315567
wvSetCursor -win $_nWave1 385230.827341
wvSetCursor -win $_nWave1 385061.444439
wvSetCursor -win $_nWave1 385061.444439
wvSetCursor -win $_nWave1 385202.596857
wvSetCursor -win $_nWave1 385202.596857
wvZoom -win $_nWave1 381786.708335 385701.335401
wvSetCursor -win $_nWave1 382384.629810
wvSetCursor -win $_nWave1 382433.870402
wvSetCursor -win $_nWave1 382440.904772
wvSetCursor -win $_nWave1 382451.456328
wvSetCursor -win $_nWave1 382602.695289
wvSetCursor -win $_nWave1 382571.040623
wvSetCursor -win $_nWave1 382789.106102
wvSetCursor -win $_nWave1 382789.106102
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 382177.115886
wvSetCursor -win $_nWave1 382286.148626
wvSetCursor -win $_nWave1 382398.698550
wvSetCursor -win $_nWave1 382486.628179
wvSetCursor -win $_nWave1 382479.593809
wvSetCursor -win $_nWave1 382553.454697
wvSetCursor -win $_nWave1 382556.971882
wvSetCursor -win $_nWave1 382416.284476
wvSetCursor -win $_nWave1 382465.525068
wvSetCursor -win $_nWave1 382437.387587
wvSetCursor -win $_nWave1 382447.939143
wvSetCursor -win $_nWave1 382535.868771
wvSetCursor -win $_nWave1 382462.007883
wvSetCursor -win $_nWave1 382564.006252
wvSetCursor -win $_nWave1 382465.525068
wvSetCursor -win $_nWave1 382553.454697
wvSetCursor -win $_nWave1 382391.664180
wvSetCursor -win $_nWave1 382472.559439
wvSetCursor -win $_nWave1 382476.076624
wvSetCursor -win $_nWave1 382493.662549
wvSetCursor -win $_nWave1 382479.593809
wvSetCursor -win $_nWave1 382479.593809
wvSetCursor -win $_nWave1 382588.626548
wvSetCursor -win $_nWave1 382588.626548
wvSetCursor -win $_nWave1 382588.626548
wvSetCursor -win $_nWave1 382588.626548
wvSetCursor -win $_nWave1 382771.520176
wvSetCursor -win $_nWave1 382771.520176
wvSetCursor -win $_nWave1 382521.800031
wvSetCursor -win $_nWave1 382472.559439
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 382578.074993
wvSetCursor -win $_nWave1 382578.074993
wvSetCursor -win $_nWave1 382578.074993
wvSetCursor -win $_nWave1 382750.417065
wvSetCursor -win $_nWave1 382750.417065
wvSetCursor -win $_nWave1 382750.417065
wvSetCursor -win $_nWave1 382873.518545
wvSetCursor -win $_nWave1 382971.999729
wvSetCursor -win $_nWave1 383095.101209
wvSetCursor -win $_nWave1 383052.894987
wvSetCursor -win $_nWave1 383052.894987
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvSetCursor -win $_nWave1 382472.710201
wvSetCursor -win $_nWave1 382469.192243
wvSetCursor -win $_nWave1 382469.192243
wvSetCursor -win $_nWave1 382469.192243
wvSetCursor -win $_nWave1 382483.264076
wvSetCursor -win $_nWave1 382595.838741
wvSetCursor -win $_nWave1 382595.838741
wvSetCursor -win $_nWave1 382585.284867
wvSetCursor -win $_nWave1 382479.746118
wvSetCursor -win $_nWave1 382578.248950
wvSetCursor -win $_nWave1 382578.248950
wvSetCursor -win $_nWave1 382578.248950
wvSetCursor -win $_nWave1 382578.248950
wvSetCursor -win $_nWave1 382578.248950
wvSetCursor -win $_nWave1 382715.449323
wvSetCursor -win $_nWave1 382546.587325
wvSetCursor -win $_nWave1 382462.156326
wvSetCursor -win $_nWave1 382486.782034
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSetCursor -win $_nWave1 382374.207369
wvSetCursor -win $_nWave1 382374.207369
wvSetCursor -win $_nWave1 382374.207369
wvSetCursor -win $_nWave1 382328.473912
wvSetCursor -win $_nWave1 382434.012660
wvSetCursor -win $_nWave1 382546.587325
wvSetCursor -win $_nWave1 382680.269740
wvSetCursor -win $_nWave1 382796.362364
wvSetCursor -win $_nWave1 382796.362364
wvSetCursor -win $_nWave1 382722.485240
wvSetCursor -win $_nWave1 382722.485240
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/tmp_r\[34:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/frccnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 8 )} 
wvSetPosition -win $_nWave1 {("G2" 8)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 382782.290530
wvSetCursor -win $_nWave1 382842.095821
wvSetCursor -win $_nWave1 382842.095821
wvSetCursor -win $_nWave1 382616.946491
wvSetCursor -win $_nWave1 382623.982407
wvSetCursor -win $_nWave1 382655.644032
wvSetCursor -win $_nWave1 382778.772572
wvSetCursor -win $_nWave1 382891.347237
wvSetCursor -win $_nWave1 382968.742319
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/tmp_r\[34:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/frccnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/cnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/deg_r\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 384752.347171
wvResizeWindow -win $_nWave1 0 23 1366 705
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/tmp_r\[34:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/frccnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/cnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/deg_r\[13:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/binary_r\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 383504.238822
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetRadix -win $_nWave1 -format Bin
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvSetRadix -win $_nWave1 -format Bin
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 383359.715479 406839.698973
wvZoom -win $_nWave1 383359.715479 386728.582676
wvSetCursor -win $_nWave1 384985.560083
wvSetCursor -win $_nWave1 383569.713682
wvSetCursor -win $_nWave1 383584.360931
wvSetCursor -win $_nWave1 383613.655428
wvSetCursor -win $_nWave1 383229.165150
wvSetCursor -win $_nWave1 383229.165150
wvSetCursor -win $_nWave1 383229.165150
wvSetCursor -win $_nWave1 383408.593947
wvSetCursor -win $_nWave1 383368.314013
wvSetCursor -win $_nWave1 383368.314013
wvSetCursor -win $_nWave1 383368.314013
wvSetCursor -win $_nWave1 382357.653854
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/tmp_r\[34:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/frccnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/cnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/deg_r\[13:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/binary_r\[21:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/i_decimal\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvExpandBus -win $_nWave1 {("G2" 11)}
wvSelectSignal -win $_nWave1 {( "G2" 70 )} 
wvSelectSignal -win $_nWave1 {( "G2" 72 73 74 75 )} 
wvCreateBusOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 75)}
wvSetPosition -win $_nWave1 {("G2" 75)}
wvSetPosition -win $_nWave1 {("G2" 76)}
wvSetPosition -win $_nWave1 {("G2" 75)}
wvSetPosition -win $_nWave1 {("G2" 75)}
wvCreateBus -win $_nWave1 "zdec\[3:0\]" \
           "/synchro_tb/xsynchro/xbinary2deg/i_decimal\[3\]" \
           "/synchro_tb/xsynchro/xbinary2deg/i_decimal\[2\]" \
           "/synchro_tb/xsynchro/xbinary2deg/i_decimal\[1\]" \
           "/synchro_tb/xsynchro/xbinary2deg/i_decimal\[0\]"
wvSetPosition -win $_nWave1 {("G2" 76)}
wvSetPosition -win $_nWave1 {("G2" 76)}
wvScrollUp -win $_nWave1 53
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetPosition -win $_nWave1 {("G2" 11)}
wvCollapseBus -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetCursor -win $_nWave1 382302.726671
wvSetCursor -win $_nWave1 382350.330229
wvSetCursor -win $_nWave1 382441.875534
wvSetCursor -win $_nWave1 382394.271975
wvSetCursor -win $_nWave1 382343.006605
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro"
wvGetSignalSetScope -win $_nWave1 "/synchro_tb/xsynchro/xbinary2deg"
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/tmp_r\[34:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/frccnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/cnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/deg_r\[13:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/binary_r\[21:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/i_decimal\[63:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/decimal_r\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvExpandBus -win $_nWave1 {("G2" 11)}
wvSelectSignal -win $_nWave1 {( "G2" 68 )} 
wvSelectSignal -win $_nWave1 {( "G2" 72 73 74 75 )} 
wvCreateBusOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 75)}
wvSetPosition -win $_nWave1 {("G2" 75)}
wvSetPosition -win $_nWave1 {("G2" 76)}
wvSetPosition -win $_nWave1 {("G2" 75)}
wvSetPosition -win $_nWave1 {("G2" 75)}
wvCreateBus -win $_nWave1 "zdec\[3:0\]" \
           "/synchro_tb/xsynchro/xbinary2deg/decimal_r\[3\]" \
           "/synchro_tb/xsynchro/xbinary2deg/decimal_r\[2\]" \
           "/synchro_tb/xsynchro/xbinary2deg/decimal_r\[1\]" \
           "/synchro_tb/xsynchro/xbinary2deg/decimal_r\[0\]"
wvSetPosition -win $_nWave1 {("G2" 76)}
wvSetPosition -win $_nWave1 {("G2" 76)}
wvScrollUp -win $_nWave1 48
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 75)}
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 74)}
wvSelectSignal -win $_nWave1 {( "G2" 10 )} 
wvScrollDown -win $_nWave1 48
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 52)}
wvSelectSignal -win $_nWave1 {( "G2" 30 31 32 33 34 35 36 37 38 39 40 41 42 43 \
           44 45 46 47 48 49 50 51 )} 
wvScrollUp -win $_nWave1 13
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 30)}
wvSelectSignal -win $_nWave1 {( "G2" 10 11 12 13 14 15 16 17 18 19 20 21 22 23 \
           24 25 26 27 28 29 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetCursor -win $_nWave1 382343.006605
wvSetCursor -win $_nWave1 382343.006605
wvSetCursor -win $_nWave1 382397.933787
wvSetCursor -win $_nWave1 382397.933787
wvSetCursor -win $_nWave1 382427.228285
wvSetCursor -win $_nWave1 382445.537346
wvSetCursor -win $_nWave1 382533.420838
wvSetCursor -win $_nWave1 382540.744462
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 3620.191304
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1366 705
wvZoom -win $_nWave1 377976.552632 391123.563158
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 382353.123241
wvSetCursor -win $_nWave1 382433.850499
wvSetCursor -win $_nWave1 382572.240083
wvSetCursor -win $_nWave1 382699.097202
wvSetCursor -win $_nWave1 382849.019252
wvSetCursor -win $_nWave1 382958.577673
wvSetCursor -win $_nWave1 383056.603629
wvSetCursor -win $_nWave1 382612.603712
wvSetCursor -win $_nWave1 382612.603712
wvSetCursor -win $_nWave1 382341.590776 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 382350.000000
wvSetCursor -win $_nWave1 382350.000000
wvSetCursor -win $_nWave1 382350.000000
wvSetCursor -win $_nWave1 382468.447895
wvSetCursor -win $_nWave1 382399.253102
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 384688.447479
wvSetCursor -win $_nWave1 384636.551385
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvResizeWindow -win $_nWave1 0 23 1366 705
wvSetCursor -win $_nWave1 384950.072300
wvSetCursor -win $_nWave1 384748.136703
wvSetCursor -win $_nWave1 383271.122053
wvSetCursor -win $_nWave1 383374.974646
wvSetCursor -win $_nWave1 383374.974646
wvSetCursor -win $_nWave1 383374.974646
wvSetCursor -win $_nWave1 383276.891642
wvSetCursor -win $_nWave1 383276.891642
wvSetCursor -win $_nWave1 383276.891642
wvSetCursor -win $_nWave1 383369.205057
wvSetCursor -win $_nWave1 383363.435469
wvSetCursor -win $_nWave1 383334.587526
wvSetCursor -win $_nWave1 383513.444769
wvSetCursor -win $_nWave1 383282.661230
wvSetCursor -win $_nWave1 383213.426168
wvSetCursor -win $_nWave1 383311.509172
wvSetCursor -win $_nWave1 383444.209707
wvSetCursor -win $_nWave1 383398.053000
wvSetCursor -win $_nWave1 383398.053000
wvSetCursor -win $_nWave1 383398.053000
wvSetCursor -win $_nWave1 383346.126703
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 383011.490572
wvSetCursor -win $_nWave1 383011.490572
wvSetCursor -win $_nWave1 382884.559625
wvSetCursor -win $_nWave1 382948.025098
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 384546.201106
wvSetCursor -win $_nWave1 384217.334563
wvSetCursor -win $_nWave1 384217.334563
wvSetCursor -win $_nWave1 384413.500572
wvSetCursor -win $_nWave1 384355.804687
wvSetCursor -win $_nWave1 384511.583576
wvSetCursor -win $_nWave1 384436.578925
wvSetCursor -win $_nWave1 384523.122753
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvExpandBus -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 45)}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvScrollUp -win $_nWave1 8
wvScrollUp -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvCollapseBus -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/synchro_tb/clk} \
{/synchro_tb/rst} \
{/synchro_tb/xsynchro/i_char\[7:0\]} \
{/synchro_tb/xsynchro/i_write} \
{/synchro_tb/xsynchro/finished} \
{/synchro_tb/xsynchro/state_r\[31:0\]} \
{/synchro_tb/xsynchro/dstate_r\[31:0\]} \
{/synchro_tb/xsynchro/r_r\[2:0\]} \
{/synchro_tb/xsynchro/w_r\[2:0\]} \
{/synchro_tb/xsynchro/SI_r\[23:0\]} \
{/synchro_tb/xsynchro/cnt_r\[7:0\]} \
{/synchro_tb/xsynchro/char\[7:0\]} \
{/synchro_tb/xsynchro/decimal_r\[63:0\]} \
{/synchro_tb/xsynchro/check} \
{/synchro_tb/xsynchro/check_r\[7:0\]} \
{/synchro_tb/xsynchro/frccnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/synchro_tb/xsynchro/xbinary2deg/i_clk} \
{/synchro_tb/xsynchro/xbinary2deg/i_rst} \
{/synchro_tb/xsynchro/xbinary2deg/i_start} \
{/synchro_tb/xsynchro/xbinary2deg/o_finished} \
{/synchro_tb/xsynchro/xbinary2deg/state_r\[31:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/tmp_r\[34:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/frccnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/cnt_r\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/deg_r\[13:0\]} \
{/zdec\[3:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/devider_r\[21:0\]} \
{/synchro_tb/xsynchro/xbinary2deg/binary_r\[21:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 383317.278761
wvSetCursor -win $_nWave1 383305.739584
wvSetCursor -win $_nWave1 383248.043699
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G2" 11 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 383051.877691
wvSetCursor -win $_nWave1 383132.651930
wvSetCursor -win $_nWave1 383173.039049
wvSetCursor -win $_nWave1 383161.499872
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1366 705
wvSetCursor -win $_nWave1 383318.748708
wvSetCursor -win $_nWave1 383232.217299
wvZoom -win $_nWave1 383099.535806 385043.608124
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvExpandBus -win $_nWave1 {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 12 )} 
wvSetPosition -win $_nWave1 {("G2" 12)}
wvCollapseBus -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetCursor -win $_nWave1 382383.043994
wvSetCursor -win $_nWave1 382439.342921
wvSetCursor -win $_nWave1 382391.840702
wvExit

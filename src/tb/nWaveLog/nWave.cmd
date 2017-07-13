wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/team12/2017summer/src/tb/char_r.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/rst} \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/D\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1366 705
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/rst} \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/zchar_r/finished} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetCursor -win $_nWave1 190497.404603 -snap {("G1" 7)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 130421.112262 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 149097.922027 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 170940.292770 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 191832.995220 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 221589.268406 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 189933.658634 -snap {("G1" 5)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 221430.990357 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 225229.663530 -snap {("G1" 3)}
wvZoom -win $_nWave1 219215.097673 240107.800123
wvSetCursor -win $_nWave1 221128.074019 -snap {("G1" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 221455.144099
wvSetCursor -win $_nWave1 0.000000 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 19879.276849 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 0.000000 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvExpandBus -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvCollapseBus -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvExpandBus -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvCollapseBus -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/rst} \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/zchar_r/finished} \
{/char_r_tb/zchar_r/state_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvExpandBus -win $_nWave1 {("G1" 8)}
wvScrollUp -win $_nWave1 9
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvCollapseBus -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 187680.252732 192451.279176
wvZoom -win $_nWave1 190545.438272 191170.725400
wvSetCursor -win $_nWave1 190798.584138 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 190900.179263 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 190874.920807 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 190801.951932 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 190900.740562 -snap {("G1" 8)}
wvZoomOut -win $_nWave1
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 333133.332099 346927.817254
wvSetCursor -win $_nWave1 341850.852341 -snap {("G1" 8)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1

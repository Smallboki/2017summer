wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/team12/2017summer/src/tb/char_r.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/zchar_r/finished} \
{/char_r_tb/zchar_r/state_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 191394.568745 224087.173356
wvSetCursor -win $_nWave1 199909.721953 -snap {("G1" 4)}
wvZoom -win $_nWave1 199463.025391 201501.078454
wvSetCursor -win $_nWave1 200096.544874 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 200192.268972 -snap {("G1" 6)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 219150.687596 -snap {("G1" 7)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/zchar_r/finished} \
{/char_r_tb/zchar_r/state_r\[31:0\]} \
{/char_r_tb/zchar_r/cnt_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 366508.422446 374528.361399
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 249504.520515 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 219260.241765 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 249942.843395 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 237669.802743 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 239861.417145 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 250819.489156 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 240299.740026 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 238546.448504 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 239423.094265 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 199436.910595 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 189793.807225 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 199436.910595 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 189793.807225 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 198998.587714 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetCursor -win $_nWave1 286224.840919
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetCursor -win $_nWave1 389669.040700
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetCursor -win $_nWave1 236694.355431
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetCursor -win $_nWave1 392397.779534
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvZoom -win $_nWave1 366098.406708 376618.155839
wvResizeWindow -win $_nWave1 8 31 1362 705
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 186344.617964 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 202448.473838 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 190945.719643 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 201298.198418 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 188645.168804 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 202448.473838 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 189795.444223 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 200147.922999 -snap {("G1" 1)}
wvSelectGroup -win $_nWave1 {G2}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 0.000000 220852.880550
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 208679.887134 -snap {("G1" 6)}
wvZoom -win $_nWave1 193995.006188 220273.214197
wvSetCursor -win $_nWave1 211031.009806 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 210847.085340 -snap {("G1" 6)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 203420.458852 213352.379990
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 204095.331300 214105.456541
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 198415.920785 220275.301889
wvSetCursor -win $_nWave1 210926.256874 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 210964.506009 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 210888.007738 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 210735.011195 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 210983.630577 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 210926.256874 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 211021.879713 -snap {("G1" 6)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 252013.998250
wvSetCursor -win $_nWave1 189727.073923 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 189506.589235 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 210452.634584 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 391139.836304 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 390257.897552 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvExpandBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvCollapseBus -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetCursor -win $_nWave1 348696.533887 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 368981.125172 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 239336.128697 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 219051.537412 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 238013.220569 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetCursor -win $_nWave1 251683.271218 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 269322.046249 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 288724.698782 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 309450.259443 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 331057.758856 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 351783.319517 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 370304.033299 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 213962.863194 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 220136.434455 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 249240.413256 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 269965.973917 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 290691.534578 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 312299.033990 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 330378.778396 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 350222.400306 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 370947.960967 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 389909.644125 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 190057.800955 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 209460.453489 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 250029.636059 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 192262.647834 -snap {("G1" 8)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G1}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 209460.453489 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 71878.008250 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 39687.243819 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 49829.539462 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 70555.100122 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 48065.661958 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 19402.652534 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 51152.447589 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 239446.371041 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 240769.279168 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 238123.462913 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 240328.309792 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 261494.839829 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 280456.522987 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 298095.298017 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 319261.828054 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 340869.327467 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 359390.041249 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 380556.571286 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 381438.510037 -snap {("G1" 1)}
wvZoom -win $_nWave1 378351.724407 396431.468813
wvSetCursor -win $_nWave1 390863.603519 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 390863.603519 -snap {("G1" 8)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 380639.518281 421133.084056
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 242258.617673
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetCursor -win $_nWave1 184046.605999
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetCursor -win $_nWave1 220501.971038
wvSetCursor -win $_nWave1 210540.330591 -snap {("G1" 23)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvZoom -win $_nWave1 208518.559666 212545.605804
wvSetCursor -win $_nWave1 211016.526168 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 210914.352644 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 211013.002943 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 210798.086220 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 210896.736519 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 210787.516545 -snap {("G1" 16)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetCursor -win $_nWave1 217324.860472
wvSetCursor -win $_nWave1 205374.081382
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 254348.656866
wvSetCursor -win $_nWave1 40277.433852 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 50958.742277 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/D\[7\]} \
{/char_r_tb/D\[6\]} \
{/char_r_tb/D\[5\]} \
{/char_r_tb/D\[4\]} \
{/char_r_tb/D\[3\]} \
{/char_r_tb/D\[2\]} \
{/char_r_tb/D\[1\]} \
{/char_r_tb/D\[0\]} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/zchar_r/finished} \
{/char_r_tb/zchar_r/state_r\[31:0\]} \
{/char_r_tb/zchar_r/cnt_r\[2:0\]} \
{/char_r_tb/zchar_r/sample_cnt_r\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 21362.616850 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 39609.852075 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 20695.035073 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 38052.161263 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 21362.616850 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 38719.743040 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 19359.871520 -snap {("G1" 17)}
wvResizeWindow -win $_nWave1 8 31 1362 705
wvResizeWindow -win $_nWave1 8 31 1362 705
wvResizeWindow -win $_nWave1 8 31 1362 705
wvResizeWindow -win $_nWave1 8 31 1362 705
wvSetCursor -win $_nWave1 38972.054133
wvSetCursor -win $_nWave1 48325.347125
wvSetCursor -win $_nWave1 60128.312091 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 69926.999987 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 19597.375793 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 39194.751585 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 20933.560506 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 40308.238846 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetCursor -win $_nWave1 22715.140123 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 37635.869420 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 21824.350315 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 38972.054133 -snap {("G1" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/zchar_r/finished} \
{/char_r_tb/zchar_r/state_r\[31:0\]} \
{/char_r_tb/zchar_r/cnt_r\[2:0\]} \
{/char_r_tb/zchar_r/sample_cnt_r\[8:0\]} \
{/char_r_tb/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetCursor -win $_nWave1 20042.770697 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 39640.146490 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 70372.394892 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 89524.375780 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 109344.449025 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 130055.312079 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 67477.328013 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 90415.165589 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 109121.751573 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 128273.732461 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 150320.780228 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 169472.761116 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 190851.716526 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 39862.843942 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 67477.328013 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 89969.770685 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 106894.777051 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 129164.522270 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 109567.146477 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 129832.614626 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 148316.503158 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 169472.761116 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 191742.506335 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 208667.512701 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 39194.751585 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 70372.394892 -snap {("G1" 9)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvCollapseBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/rst} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/zchar_r/finished} \
{/char_r_tb/zchar_r/state_r\[31:0\]} \
{/char_r_tb/zchar_r/cnt_r\[2:0\]} \
{/char_r_tb/zchar_r/sample_cnt_r\[8:0\]} \
{/char_r_tb/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 191297.111431 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 171031.643281 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 153438.544558 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 130946.101887 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 113575.700617 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 93310.232467 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 70595.092344 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 49438.834386 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 41867.121012 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 61019.101900 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 41867.121012 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 59014.824830 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 39862.843942 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 70595.092344 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 88188.191067 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 69704.302535 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 91305.955398 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 108899.054121 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 129609.917174 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 149652.687871 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 170586.248377 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 190851.716526 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 210749.733879 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 218956.653506
wvSetCursor -win $_nWave1 237440.542038
wvSetCursor -win $_nWave1 249466.204456
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectGroup -win $_nWave1 {G2}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/rst} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/zchar_r/i_rx} \
{/char_r_tb/zchar_r/char_r\[7:0\]} \
{/char_r_tb/zchar_r/finished} \
{/char_r_tb/zchar_r/state_r\[31:0\]} \
{/char_r_tb/zchar_r/sample_cnt_r\[8:0\]} \
{/char_r_tb/cnt_r\[3:0\]} \
{/char_r_tb/zchar_r/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 207119.765409 216250.360948
wvSetCursor -win $_nWave1 210997.950033
wvSetCursor -win $_nWave1 211065.396722
wvSetCursor -win $_nWave1 210947.365016
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 431658.810374 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvExpandBus -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvCollapseBus -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvCollapseBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvCollapseBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetCursor -win $_nWave1 270138.504155 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 290526.315789 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 272262.234534 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvCollapseBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver/zchar_r"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/rst} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/char_r_tb/zreceiver/zchar_r/o_char\[7:0\]} \
{/char_r_tb/zreceiver/zchar_r/o_finished} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/rst} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/char_r_tb/zreceiver/zchar_r/o_char\[7:0\]} \
{/char_r_tb/zreceiver/zchar_r/o_finished} \
{/char_r_tb/zreceiver/o_D\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/rst} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/char_r_tb/zreceiver/zchar_r/o_char\[7:0\]} \
{/char_r_tb/zreceiver/zchar_r/o_finished} \
{/char_r_tb/zreceiver/o_ready} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/rst} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/char_r_tb/zreceiver/zchar_r/o_char\[7:0\]} \
{/char_r_tb/zreceiver/zchar_r/o_finished} \
{/char_r_tb/zreceiver/o_ready} \
{/char_r_tb/zreceiver/w_r\[2:0\]} \
{/char_r_tb/zreceiver/r_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 226508.587258 324319.113573
wvZoom -win $_nWave1 229683.446846 234650.740426
wvSetCursor -win $_nWave1 231302.518530 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 231362.144399 -snap {("G2" 5)}
wvSetCursor -win $_nWave1 231343.797978
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_r_tb"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver/zchar_r"
wvGetSignalSetScope -win $_nWave1 "/char_r_tb/zreceiver"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_r_tb/dclk} \
{/char_r_tb/sclk} \
{/char_r_tb/rst} \
{/char_r_tb/D\[7:0\]} \
{/char_r_tb/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/char_r_tb/zreceiver/zchar_r/o_char\[7:0\]} \
{/char_r_tb/zreceiver/zchar_r/o_finished} \
{/char_r_tb/zreceiver/o_ready} \
{/char_r_tb/zreceiver/w_r\[2:0\]} \
{/char_r_tb/zreceiver/r_r\[2:0\]} \
{/char_r_tb/zreceiver/i_read} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvGetSignalClose -win $_nWave1
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G1} {G2}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectGroup -win $_nWave1 {G3}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSelectGroup -win $_nWave1 {G1}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/team12/2017summer/src/tb/char_t.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/tx} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/tx} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/i_baud\[15:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 232206.554017
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 52316.158061
wvResizeWindow -win $_nWave1 0 23 1366 705
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/start_r} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 88332.386791
wvZoom -win $_nWave1 1056.413089 44288.087213
wvSetCursor -win $_nWave1 39998.725618 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 40197.583365 -snap {("G1" 5)}
wvZoom -win $_nWave1 39044.208434 40674.841957
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 22061.246550 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 38489.834407 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 73693.951242
wvSetCursor -win $_nWave1 90591.927323
wvSetCursor -win $_nWave1 113122.562098
wvSetCursor -win $_nWave1 136591.973321
wvSetCursor -win $_nWave1 155367.502300
wvSetCursor -win $_nWave1 182592.019319
wvSetCursor -win $_nWave1 200428.771849
wvSetCursor -win $_nWave1 214041.030359
wvSetCursor -win $_nWave1 238449.218031
wvZoom -win $_nWave1 235753.487482 287855.580398
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
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 69000.068997
wvSetCursor -win $_nWave1 84959.268629
wvSetCursor -win $_nWave1 112183.785649
wvSetCursor -win $_nWave1 126734.820607
wvSetCursor -win $_nWave1 153020.561178
wvSetCursor -win $_nWave1 165224.655014
wvZoom -win $_nWave1 188694.066237 191510.395584
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
wvSetCursor -win $_nWave1 233472.925576
wvSetCursor -win $_nWave1 244748.606641
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
{/char_t_tb/ztransmitter/i_write} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
{/char_t_tb/ztransmitter/i_write} \
{/char_t_tb/ztransmitter/w_r\[2:0\]} \
{/char_t_tb/ztransmitter/r_r\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 108113.883150
wvSetCursor -win $_nWave1 80919.593524
wvSetCursor -win $_nWave1 129338.694566
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
{/char_t_tb/ztransmitter/i_write} \
{/char_t_tb/ztransmitter/w_r\[2:0\]} \
{/char_t_tb/ztransmitter/r_r\[2:0\]} \
{/char_t_tb/ztransmitter/i_D\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 97501.477442
wvZoom -win $_nWave1 39467.019388 42068.254757
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 40023.401378
wvSetCursor -win $_nWave1 40109.550847
wvSetCursor -win $_nWave1 40176.555990
wvSetCursor -win $_nWave1 40286.635868
wvSetCursor -win $_nWave1 40267.491541
wvSetCursor -win $_nWave1 40334.496684
wvSetCursor -win $_nWave1 40463.720888
wvSetCursor -win $_nWave1 40530.726031
wvSetCursor -win $_nWave1 40564.228603
wvSetCursor -win $_nWave1 40626.447664
wvSetCursor -win $_nWave1 40645.591991
wvSetCursor -win $_nWave1 40645.591991
wvSetCursor -win $_nWave1 40726.955378
wvSetCursor -win $_nWave1 40736.527542
wvSetCursor -win $_nWave1 40865.751746
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
{/char_t_tb/ztransmitter/i_write} \
{/char_t_tb/ztransmitter/w_r\[2:0\]} \
{/char_t_tb/ztransmitter/r_r\[2:0\]} \
{/char_t_tb/ztransmitter/i_D\[7:0\]} \
{/char_t_tb/ztransmitter/r_w\[2:0\]} \
{/char_t_tb/ztransmitter/w_w\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 0.000000 263589.651334
wvZoom -win $_nWave1 36373.916927 43163.714754
wvZoom -win $_nWave1 39878.127213 40940.009118
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 40746.096001
wvSelectGroup -win $_nWave1 {G2}
wvSelectGroup -win $_nWave1 {G1}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 12)}
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
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 28009.455350 51017.222245
wvZoom -win $_nWave1 39608.587143 41153.726962
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
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
wvZoom -win $_nWave1 39300.851624 44213.458077
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 37023.065376 46278.831720
wvZoom -win $_nWave1 39764.883925 41093.218377
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/full} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
{/char_t_tb/ztransmitter/i_write} \
{/char_t_tb/ztransmitter/w_r\[2:0\]} \
{/char_t_tb/ztransmitter/r_r\[2:0\]} \
{/char_t_tb/ztransmitter/i_D\[7:0\]} \
{/char_t_tb/ztransmitter/start_r} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/full} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
{/char_t_tb/ztransmitter/i_write} \
{/char_t_tb/ztransmitter/w_r\[2:0\]} \
{/char_t_tb/ztransmitter/r_r\[2:0\]} \
{/char_t_tb/ztransmitter/i_D\[7:0\]} \
{/char_t_tb/ztransmitter/start_r} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/char_t_tb"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter/zchar_t"
wvGetSignalSetScope -win $_nWave1 "/char_t_tb/ztransmitter"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/char_t_tb/sclk} \
{/char_t_tb/dclk} \
{/char_t_tb/rst} \
{/char_t_tb/ztransmitter/o_tx} \
{/char_t_tb/ztransmitter/full} \
{/char_t_tb/ztransmitter/zchar_t/state_r\[31:0\]} \
{/char_t_tb/ztransmitter/zchar_t/cnt_r\[3:0\]} \
{/char_t_tb/ztransmitter/zchar_t/char_r\[7:0\]} \
{/char_t_tb/ztransmitter/i_write} \
{/char_t_tb/ztransmitter/w_r\[2:0\]} \
{/char_t_tb/ztransmitter/r_r\[2:0\]} \
{/char_t_tb/ztransmitter/i_D\[7:0\]} \
{/char_t_tb/ztransmitter/start_r} \
{/char_t_tb/ztransmitter/w_w\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoom -win $_nWave1 237130.307209 245264.064448
wvSetCursor -win $_nWave1 240138.375663
wvSetCursor -win $_nWave1 240168.306693
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvZoom -win $_nWave1 239958.789487 240400.272170
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 240287.180309
wvSetCursor -win $_nWave1 240269.309805
wvSetCursor -win $_nWave1 240279.057353
wvSetCursor -win $_nWave1 240253.063892
wvSetCursor -win $_nWave1 240283.931126
wvSetCursor -win $_nWave1 240266.060622
wvSetCursor -win $_nWave1 240266.060622
wvSetCursor -win $_nWave1 240266.060622
wvSetCursor -win $_nWave1 240280.681944
wvSetCursor -win $_nWave1 240240.067162
wvSetCursor -win $_nWave1 240240.067162
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
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 24979.241950 64529.708372
wvZoom -win $_nWave1 39023.841802 41498.020014
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 234243.448181 245897.351076
wvSetCursor -win $_nWave1 240065.039048
wvSetCursor -win $_nWave1 239936.385106
wvSetCursor -win $_nWave1 239957.827429
wvSetCursor -win $_nWave1 240075.760209
wvSetCursor -win $_nWave1 240043.596724
wvZoom -win $_nWave1 239721.961869 240568.933653
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 240185.186088
wvSetCursor -win $_nWave1 240054.283365
wvSetCursor -win $_nWave1 240066.750291
wvSetCursor -win $_nWave1 240244.403986
wvSetCursor -win $_nWave1 240199.211379
wvSetCursor -win $_nWave1 240192.977916
wvSetCursor -win $_nWave1 240172.719162
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
wvZoom -win $_nWave1 25532.264399 49468.762274
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 270102.373505
wvZoom -win $_nWave1 235374.925483 239715.856486
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 239629.996305 241019.733185

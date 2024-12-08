a:{1_?,/x*{(!x),/:\:!x}@#in}'1_{=[x;]'?,/x}@in:0:"8.in"      / antenna locations (assuming 0,0 isn't an antenna), input
an:{,/_[{{~(2=+/x>-1)&2=+/x<#in}'x};]'x {y+z*x-y}[;;y]/:\:x} / anti-nodes y times apart within the bounds of the grid

star1: #?,/{an[x;2]^x}'a
star2: #?,/,/{an[;x]'a}'!#in

`0:`k'(star1;star2)

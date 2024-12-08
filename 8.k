c:{(!x),/:\:!x}                             / generate coordinates
a:{1_?,/x*c@#in}'1_{=[x;]'?,/x}@in:0:"8.in" / antenna locations (assuming 0,0 isn't an antenna), input
b:_[{{~(2=+/x>-1)&2=+/x<#in}'x};]           / bounds-filtering
anp:{y+z*x-y}                               / anti-node position at z * coord
an:{,/b'x anp[;;y]/:\:x}                    / all anti-nodes within the bounds of the grid

star1: #?,/{an[x;2]^x}'a
star2: #?,/,/{an[;x]'a}'!#in

`0:`k'(star1;star2)

in ← >•FLines"4.in"

Diagonals ← {𝕊a: (0‿0⊸⍉¨{«˘⍟𝕩 a}¨↕≠a) ∾ 1↓0‿0⊸⍉¨{»˘⍟𝕩 a}¨↕≠a}

# star 1
inputs ← in‿(⌽˘in)‿(⍉in)‿(⌽˘⍉in)
d←(⌽¨˘∾⊢)∾Diagonals¨2↑inputs
+´+˝"XMAS"⊸⍷˘∾inputs∾d

# star 2
# build filtering matrix for the X shape
m←∘‿3⥊1‿0‿1‿0‿1‿0‿1‿0‿1
F ← " XMAS"⊸⊐

# build the shapes we want to find
mass ← {𝕩‿(⌽˘𝕩)‿(⍉𝕩)‿(⍉⌽˘𝕩)} F>"M S"‿" A "‿"M S"

# split the input matrix into 3x3 chunks
# and search for the shapes we're interested in
+´+˝+˝{𝕩⊸≡¨mass}˘˘m⊸×∘F˘˘3‿3↕in

in   ← >•FLines"8.in"
a    ← 1↓(⍷∘⥊⊸⊐⊔↕∘≢) in            # antenna locations (assumes 0‿0 isn't an antenna)
B    ← {(2=+´𝕩≥0)∧ 2=+´𝕩<(≢in)}¨⊸/ # bounds filtering
_ANP ← {𝕨+𝕗×𝕩-𝕨}                   # anti-node position at 𝕗 × coord
AN   ← {B∾<˘𝕨_ANP⌜˜𝕩}              # all anti-nodes within the bounds of the grid
NOAN ← {(¬∘∊/⊣)⟜𝕩 2 AN𝕩}           # anti-nodes that are not overlapping with antennas
Uniq ← (∊⊸/⊢)○∾⟜(NOAN¨)            # unique non-overlapping anti-nodes

star1 ← ≠Uniq a
star2 ← ≠⍷∾∾{𝕩⊸AN¨a}¨↕≠in

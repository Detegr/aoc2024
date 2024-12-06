g‿w ← {𝕩⊸=¨"^#"}>•FLines"6.in"
og  ← g
d   ← «‿(»⌾⍉)‿»‿(«⌾⍉) # directions
od  ← d
M   ← {𝕎𝕩}            # move
C   ← {+´+˝2=𝕨+𝕩}     # collision
E   ← {0=+´+˝𝕩}       # end (guard out of frame)
stp ← ⟨⟩              # steps
S   ← {w𝕊𝕩:           # step
  ng ← (⊑d)M g
  { w C ng ? d 1⊸⌽↩ ⋄ g ; stp∾⟜(⋈g)↩ ⋄ g↩ng }
}
 w⊸S•_while_(¬E) g

star1 ← ≠⍷stp

# hilariously slow brute force
# would need to convert the whole solution to
# use coordinates instead of visually nice arrays
# if I would be interested in any kind of perf
ob    ← ⥊{1⌾(𝕩⊸⊑) (≢g)⥊0}¨↕|≢g # all possible obstructions
loops ← 0
{𝕊:
  stp ↩ ⟨⟩
  g   ↩ og
  d   ↩ od
  (×(𝕩⊑ob)+w)⊸S•_while_{((≠stp)<×´≢g) ∧ ¬E𝕩} g
  loops +↩ (≠stp)≥×´≢g
  𝕩+1
}•_while_{𝕩<≠ob} 0

star2 ← loops

in  ← >•FLines"12.in"
l   ← ≠⥊in
_fp ← {𝔽∘⊢⍟≢⟜𝔽_𝕣∘⊢⍟≢⟜𝔽𝕩}
z   ← (≢in)⥊0
d   ← ⊢‿»‿«‿(«˘)‿(»˘)
Pad ← {⍉0⊸∾∘∾⟜0˘⍉0⊸∾∘∾⟜0˘𝕩}
P   ← {𝕩{𝕩×˜¬𝕨¬×𝕩}(+´𝕩⊸{𝕏𝕨}¨1↓d)}∘Pad
Pt  ← {1⊸»⌾(𝕩⊸↓⥊)z}
FF  ← {𝕊p: p ∨ ∨´{(in = 𝕏in) ∧ 𝕏p}¨d}_fp

a ← z
{
  m ←  (¬×a)×Pt 𝕩
  a ∨↩ (1+𝕩)×FF m
  𝕩 + 1
}•_while_{𝕩<l} 0

as     ← =⟜a¨⍷∾<˘a
star1  ← +´((+´+˝∘P)×(+´+˝))¨as

# silly things again
# finds corners (==sides) in a brute forcey manner
antic  ← ⟨[0‿0,0‿0],[0‿0,1‿1],[1‿1,0‿0],[1‿0,1‿0],[0‿1,0‿1],[1‿1,1‿1]⟩
double ← ⟨[1‿0,0‿1],[0‿1,1‿0]⟩
Corner ← {(+´≡⟜𝕩¨double) + ¬+´≡⟜𝕩¨antic}
Sides  ← {Corner⎉2 2‿2↕Pad 𝕩}

star2  ← +´((+´+˝∘Sides)×(+´+˝))¨as

Nums  ← {•ParseFloat¨((¯1+⊢×·+`»⊸<)𝕩∊'0'+↕10)⊔𝕩}
E     ← +`⟨⟩⊸≡¨
Re    ← ⟨⟩⊸≢¨⊸/
in    ← nums¨¨Re¨E⊸⊔•FLines"13.in.big"

xs    ← ⥊⋈⌜˜↕101
Price ← ×⟜3+⊢
Solve ← {⟨ax,ay⟩‿⟨bx,by⟩‿p𝕊i: p ≡ +´¨i⊸×¨(ax‿bx)‿(ay‿by)}

sols  ← Re{/(𝕩⊸Solve)¨xs}¨in
star1 ← +´⌊´¨Price´⚇1(⊑⟜xs)¨¨sols

Solve2 ← {𝕊⟨ax,ay⟩‿⟨bx,by⟩‿⟨px,py⟩:
  d     ← (ax×by) - (bx×ay)
  a     ← ⌊d ÷˜ (by×px)  - (bx×py)
  b     ← ⌊d ÷˜ (px×-ay) + (ax×py)
  a‿b × px‿py ≡ ((ax×a) + bx×b)‿((ay×a) + by×b)
}

in 10000000000000⊸+⌾(2⊸⊑)¨ ↩
star2 ← +´Price´¨Solve2¨in

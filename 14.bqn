I  ← {•ParseFloat¨((¯1+⊢×·+`»⊸<)𝕩∊'-'∾'0'+↕10)⊔𝕩}
in ← >I¨•FLines"14.in.real"
sz ← 101‿103 # for real input
#sz ← 11‿7     # for example input
h  ← ⌊sz÷2
M  ← {𝕊x‿y‿dx‿dy:
  nx‿ny ← sz|(x+dx)‿(y+dy)
  nx‿ny‿dx‿dy
}

c  ← <˘2⊸↑˘M⍟100˘in
e  ← +´{+⟜1⌾((⌽𝕩)⊸⊑) ⍉sz⥊0}¨c
Q  ← {w‿h𝕊𝕩: w↑⌾⍉h↑𝕩}

star1 ← ×´(+´+˝)¨{h Q 𝕏e}¨⟨⊢,⌽˘,⌽,⌽⌽⌾⍉⟩

e ↩ sz⥊0
s ← in
i ↩ 0

{𝕊:
  i ↩ i + 1
  c ← <˘2⊸↑˘s
  s ↩ M˘s
  +´{+⟜1⌾((⌽𝕩)⊸⊑) ⍉sz⥊0}¨c
}•_while_{0=+´(+´(8⥊1)⊸⍷)˘𝕩} ⟨⟩

star2 ← i-1

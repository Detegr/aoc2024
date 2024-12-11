in    ← ↑‿2⥊•ParseFloat∘⋈¨⊑•FLines"9.in"
id    ← ⍉(⍉in)∾˜↕⊑≢in
DoMap ← {∾⥊{𝕊id‿file‿free: ⋈(file/⋈id)∾free/⋈'.'}˘𝕩}
map   ← DoMap id
moved ← {¯1↓(¯1⊑𝕩)⌾((⊑/'.'⊸=𝕩)⊸⊑)𝕩}⍟(+´'.'=map) map

star1 ← +´×˝(↕∘≠≍⊢)moved

# naive and uncleaned port from python solution for star2

id     ↩ id∾⌾⍉0⥊˜≠id
Mv     ← {t‿f𝕊𝕩: ((t+1)↑𝕩)∾(f⊏𝕩)∾((1-˜f-t)↑(t+1)↓𝕩)∾((f+1)↓𝕩)}
bi ← c ← 1-˜≠id
moved2 ← {𝕊𝕩:
  i‿d‿f‿f2 ← 𝕩
  b ← bi⊑d
  {𝕊fbi: ((fbi⊑f)≥b) ∧ (fbi<bi) ?
    f2 +⟜((bi⊑d)+(bi⊑f))⌾(bi⊸⊑) ↩
    i fbi‿bi⊸Mv ↩
    d fbi‿bi⊸Mv ↩
    f fbi‿bi⊸Mv ↩
    f ((fbi⊑f)-b)⌾((fbi+1)⊸⊑) ↩
    f 0⌾(fbi⊸⊑) ↩
    bi +↩ 1
    @ ; 𝕩+1
  }•_while_{𝕩<≠f} 0
  bi -↩ 1
  c  -↩ 1
  i‿d‿f‿f2
}•_while_{𝕊: c>0} <˘⍉id

DoMap2 ← {∾⥊{𝕊id‿file‿free: ⋈(file/⋈id)∾free/⋈0}˘𝕩}
star2  ← +´×˝(↕∘≠≍⊢) DoMap2⍉¯1↓(≍˜+˝)⌾(2⊸↓) >moved2

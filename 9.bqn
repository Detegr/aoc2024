in    ← ↑‿2⥊•ParseFloat∘⋈¨⊑•FLines"9.in"
id    ← ⍉(⍉in)∾˜↕⊑≢in
DoMap ← {w←𝕨 ⋄ ∾⥊{𝕊id‿file‿free: ⋈(file/⋈id)∾free/⋈w}˘𝕩}
map   ← '.' DoMap id
moved ← {¯1↓(¯1⊑𝕩)⌾((⊑/'.'⊸=𝕩)⊸⊑)𝕩}⍟(+´'.'=map) map

star1 ← +´×˝(↕∘≠≍⊢)moved

# port from python solution
# not the thing of beauty but works, *shrug*

id ↩ id∾⌾⍉0⥊˜≠id
Mv ← {t‿f𝕊𝕩: ((t+1)↑𝕩)∾(f⊏𝕩)∾((1-˜f-t)↑(t+1)↓𝕩)∾((f+1)↓𝕩)}
bi ← c ← (≠id)-1
defrag ← {𝕊i‿d‿f‿f2:
  b ← bi⊑d
  {𝕊fbi: (b ≤ fbi⊑f) ∧ fbi<bi ?
    f2 (d +○(bi⊸⊑) f)⌾(bi⊸⊑) ↩
    i‿d‿f fbi‿bi⊸Mv¨ ↩
    f (b -˜ fbi⊑f)⌾((fbi+1)⊸⊑) ↩
    f 0⌾(fbi⊸⊑) ↩
    bi +↩ 1
    @ ; 𝕩+1
  }•_while_{𝕩<≠f} 0
  bi‿c -↩ 1
  i‿d‿f‿f2
}•_while_{𝕊: c>0} <˘⍉id

star2  ← +´×˝(↕∘≠≍⊢) 0 DoMap⍉¯1↓(≍˜+˝)⌾(2⊸↓) >defrag

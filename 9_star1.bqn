in    ← ↑‿2⥊•ParseFloat∘⋈¨⊑•FLines"9.in"
id    ← ⍉(⍉in)∾˜↕⊑≢in
map   ← ∾⥊{𝕊id‿file‿free: ⋈(file/⋈id)∾free/⋈'.'}˘id
moved ← {¯1↓(¯1⊑𝕩)⌾((⊑/'.'⊸=𝕩)⊸⊑)𝕩}⍟(+´'.'=map) map

star1 ← +´×˝(↕∘≠≍⊢)moved

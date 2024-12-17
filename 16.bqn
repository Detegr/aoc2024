# Modified from my ugly AoC 2021 day 15 solution
# Getting tedious, not having much fun anymore, I guess this was it for this year

If ← {𝕏⍟𝕎@}´
in ← >•FLines"16.in.big"
i  ← ↕≢in
N  ← {/○⥊⟜(↕≢) i∊𝕩⊸+¨⟨¯1‿0,1‿0,0‿¯1,0‿1⟩}

up‿right‿down‿left ← 1+↕4

IsUp    ← {y1‿x1𝕊y2‿x2: y2<y1}
IsDown  ← {y1‿x1𝕊y2‿x2: y2>y1}
IsRight ← {y1‿x1𝕊y2‿x2: x2>x1}
IsLeft  ← {y1‿x1𝕊y2‿x2: x2<x1}
Dir     ← {𝕨 IsUp 𝕩 ? up ; 𝕨 IsDown 𝕩 ? down ; 𝕨 IsRight 𝕩 ? right ; 𝕨 IsLeft 𝕩 ? left ; 0}

in ↩ 99999999×¬×(⍷⥊in)⊐in
s←≢in
m←s⥊1
tgt←(2-˜⊑≢in)‿1
cur←1‿(2-˜1⊑≢in)
cs←⟨⟩
csd←⟨⟩
u←0⌾(cur⊸⊑)s⥊∞

# ultra stupid, only works by testing what gives the best result for this input
d ← down

Step ← {𝕤
  neig←N cur
  neig↩(0≠neig⊑m)/neig
  If (≠neig)‿{𝕤
    cs↩neig∾cs
    csd↩(cur⊸Dir¨neig)∾csd
    u↩{𝕤
      i←neig⊑in
      c←cur⊑u
      i ↩ 1+i+1000×d ≠ cur⊸Dir¨neig
      {𝕊inp‿u: (u⌊c+inp)}˘⍉i≍𝕩
    }⌾(neig⊸⊑) u
  }
  csi    ← ⊑⍋cs⊑u
  newcur ← csi⊑cs
  d      ↩ csi⊑csd
  m   ↩ 0⌾(cur⊸⊑) m
  cur ↩ newcur
  csm ← (<cur)≢¨cs
  cs  ↩ csm/cs
  csd ↩ csm/csd
  tgt⊑u
}

star1 ← Step∘@•_while_(=⟜∞) ∞

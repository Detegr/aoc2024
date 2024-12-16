m‿i ← {(>𝕨)⋈ ∾𝕩}´((+`⟨⟩⊸≡¨)⊔⊢)•FLines"15.in"
idx ← ↕≢m
P   ← {(/⥊𝕩)⊏ ⥊idx}
D   ← {(¯1‿0⊸+¨)‿(1‿0⊸+¨)‿(0‿1⊸+¨)‿(0‿¯1⊸+¨)⊑˜⊑"^v><"⊐𝕩}

r   ← P '@'=m
s   ← P 'O'=m
w   ← P '#'=m
No  ← {𝕊: 𝕨/˜¬×+˝𝕩≡⌜𝕨 }
In  ← {+´(+´⋈⊸⍷⟜𝕩)¨𝕨}
Mvp ← {
  nx ← 𝕎𝕩
  (¬(nx In w)) ? 𝕨 {(𝕩 In ⥊s) ? 𝕩∾(𝕨 Mvp 𝕩) ; 𝕩 } nx ; ⋈⟨⟩
}
Mv  ← {𝕊:
  p ← (D𝕨) Mvp r
  ⟨⟩ ≢ ¯1⊑p ? {
    r ↩ ⋈⊑p
    s ↩ ⍷(s∾1↓p) No r
    @
  }; @
}
Mv⟜@¨i

star1 ← +´{𝕊t‿l: l+t×100}¨s

Disp ← {𝕊:
  o ← (≢m)⥊"."
  {o '#'⌾(𝕩⊸⊑) ↩}¨w
  {o '['⌾((0⊑𝕩)⊸⊑) ↩}˘s
  {o ']'⌾((1⊑𝕩)⊸⊑) ↩}˘s
  {o '@'⌾(𝕩⊸⊑) ↩}¨r
  o
}

# uhhhh... this turned out horrible

m 2⊸/⌾⍉ ↩
idx ↩ ↕≢m
r ↩ ⋈⊑P '@'=m
s ↩ ∘‿2⥊P 'O'=m
w ↩ P '#'=m

mvd ← ⟨⟩
MvpH ← {
  nx ← 𝕎𝕩
  mvd ↩ mvd∾𝕩
  (¬(nx In w)) ? 𝕨 {(𝕩 In ⥊s) ? 𝕩∾(𝕨 MvpH 𝕩) ; 𝕩 } nx ; ⋈⟨⟩
}
MvpV ← {
  nx ← 𝕎𝕩
  mvd ↩ mvd∾𝕩
  (¬(nx In w)) ?
    𝕨 {(𝕩 In ⊏⍉s) ?
      𝕩∾(𝕨 MvpV 𝕩)∾(𝕨 MvpV 0‿1+⚇1𝕩) ;
      (𝕩 In 1⊏⍉s) ?
        𝕩∾(𝕨 MvpV 𝕩)∾(𝕨 MvpV 0‿¯1+⚇1𝕩) ;
        𝕩
      } nx ;
    ⟨⟨⟩⟩
}
Mv2  ← {𝕊:
  f ← {⊑𝕩∊"v^" ? mvpv ; mvph} 𝕨
  p ← ⍷(D𝕨) F r
  ⟨⟩ ≢ ¯1⊑∨p ? {
    or ← r
    r  ↩ ⋈⊑p
    s ↩ ∘‿2⥊⍷∧((1↓p) No r∾or)∾(⥊s) No mvd
    mvd ↩ ⟨⟩
    @
  }; mvd ↩ ⟨⟩
}

{𝕊: 𝕩 Mv2 @}¨i ⋄ Disp@
star2 ← +´{𝕊t‿l: l+t×100}¨⊏⍉s

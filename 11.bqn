F  ← •ParseFloat
S  ← (⊢-˜+`×¬)∘=⊔⊢
in ← ⋈∘F¨' 'S ¯1↓•FChars"11.in"
H  ← {⌊2÷˜≠𝕩}
B  ← ∾{𝕊: 𝕩=0 ? 1 ; ¬2|≠•Fmt𝕩 ? F¨H⊸(↑⋈↓)•Fmt𝕩 ; ⋈𝕩×2024}∘⊑¨

star1 ← ≠B⍟25 in

hm ← in •HashMap 1⥊˜≠in
{𝕊:
  nh ← •HashMap˜⟨⟩
  kv ← <˘⍉(hm.Values@)≍hm.Keys@
  { 𝕨⊸{𝕩 nh.Set 𝕨+0 nh.Get𝕩}¨B𝕩 }´¨kv
  hm↩nh
}⍟75 "Hello, world! BQN best."

star2 ← +´hm.Values@

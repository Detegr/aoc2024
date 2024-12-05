S           ← (⊢-˜+`×¬)∘=⊔⊢
rules‿pages ← (+`⟨⟩⊸≡¨)⊸⊔•FLines"5.in"
pages ((•ParseFloat¨','⊸S)¨1⊸↓)↩
rules (>(•ParseFloat¨'|'⊸S)¨)↩

pageorders ← (⍒∊⟜rules∘⋈⌜˜)¨pages # stole this from @RubenVerg
Middle     ← (⌊∘÷⟜2≠)⊸⊑
correct    ← (∧≡⊢)¨pageorders

star1      ← +´correct/Middle¨pages
star2      ← +´(¬correct)/Middle¨pageorders⊏¨pages

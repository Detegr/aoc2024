in    ← •ParseFloat∘⋈¨˘>•FLines"10.in.big"
i     ← ↕≢in
heads ← (⥊0=in)/⥊i
N     ← {/○⥊⟜(↕≢) i∊𝕩⊸+¨⟨¯1‿0,1‿0,0‿¯1,0‿1⟩}
Step  ← {𝕊⟨⟩: ⟨⟩; 𝕊:
  ni ← N𝕩          # neighbor indices
  ne ← ⊑⟜in¨ni     # neighbor elements
  ok ← (1+𝕩⊑in)=ne # mask for valid elements
  ok/ni            # valid neighbor indices
}
W     ← {𝕊⟨⟩:𝕩; 𝕊:𝕩∾𝕊¨Step𝕩}
Ends  ← (≡¨)⊸/{(∾𝕊¨)⍟(2<≡)⥊𝕩}

star1 ← +´{+´ 9=⊑⟜in ⍷ Ends W𝕩}¨heads
star2 ← +´{+´ 9=⊑⟜in Ends W𝕩}¨heads

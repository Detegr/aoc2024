Fl ← •ParseFloat
S  ← (⊢-˜+`×¬)∘=⊔⊢
in ← {(Fl 𝕨)‿(Fl¨1↓' 'S𝕩)}´¨':'⊸S¨•FLines"7.in"

Flat ← {(∾𝕊¨)⍟(1<≡)⥊𝕩}     # Flatten a nested list
Join ← {𝕩+𝕨×10⋆1+⌊10⋆⁼𝕩}   # Concatenate two numbers together
Conc ← {𝕨{𝕩⊸Join¨𝕨}Flat𝕩}  # Rank polymorphic(?) concatenate of numbers
_Eq  ← {𝕨××+´𝕨=Flat𝔽´⌽𝕩}   # Returns 𝕨 if 𝕨 is contained in the atoms of 𝕗 applied between elements in 𝕩

star1 ← +´(× ∾ +)_Eq´¨in
star2 ← +´(× ∾ + ∾ Conc)_Eq´¨in

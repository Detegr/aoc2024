in ← ∾•FLines"3.in.big"
S  ← (⊢-˜+`×¬)∘=⊔⊢

# split input from "mul("
# if the instruction is valid, the resulting string
# starts with "d,d)", where d is a digit
m ← (+`·»⍟4≠↑"mul("⊸⍷)⊸⊔in

# only use strings that have ,) in them
valid ← ⟨⟩⊸≢¨⊸/{1‿1≡",)"∊𝕩}⊸/¨m

# Split from ) and parse each side of ,
# Multiply and sum each pair
Star ← {+´×´¨','•ParseFloat⎊0¨∘S¨')'⊑∘S¨𝕩}

# Build a mask for filtering
Mark ← {»+´¨𝕨⊸⍷¨𝕩}

# Build the do/don't mask imperatively
# Could not figure out an array'y solution for this
do     ← 1
domask ← {1𝕊0: do↩1; 0𝕊1: do↩0; 0𝕊0: do}´˘⍉>Mark⟜valid¨"do()"‿"don't()"

star1 ← Star valid
star2 ← Star domask/valid

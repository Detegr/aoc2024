in←(6÷⍨≢in) 6 ⍴ in←⍎¨⊃{⍵(∊⊆⊣)⎕D}¨⎕NGET'13.in'
solve←{
    ax ay bx by px py←⍵
    d←(ax×by)-(bx×ay)
    a←⌊d÷⍨(by×px)-(bx×py)
    b←⌊d÷⍨(px×-ay)+(ax×py)
    a b×px py≡((ax×a)+bx×b)((ay×a)+by×b)
}
price ← {⍵+3×⍺}

star1 ← +/(price/solve⍤1)in
star2 ← +/(price/solve∘(10000000000000∘+@5 6)⍤1) in

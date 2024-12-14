r:{@[y;&+/x~'\:y;{" "}]}
in:0N 4#.r[",\n";(4="\n --:"')_1:"14.in.real"]
h:_%[;2]s:101 103
m:{[x;y;dx;dy] (s!'(x+dx;y+dy)),dx,dy}.
d:{++/{.[s#0;x;{1}]}'x}2#'
a:d 100m/'in
star1:*/(+/+/)'{{x#'y#z}[;;x].h}'(a;|'a;|a;|+|+a)

star2::0
/ horribly slow, but don't know a better way to check
/ if a certain pattern appears within a vector
t:{|/8{&/x}':x}
{0=+/t'd x}{star2::star2+1;m'x}/in

# triangle.sage
# four triangle problem (from some youtube)

var("a b c d e f")
eqn = [ a+f == 6
      , c+d == 6
      , b+e == 6
      , 4*f == f+c+e
      , 4*(f+c) == f+c +e+b
      , 9*f == f+c+e+b+d
      ]
sol = solve( eqn, [a,b,c,d,e,f] )
ans = (a+b+c).subs( sol )
print(ans)

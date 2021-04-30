# A note on "Sums of Powers of Integers (A.F. Beardon)"
# Ray D. Sameshima

# Let us define the function:
sigma,k,n = var("sigma k n")
i = var("i")

def sigma(k,n=n):
    return( factor(expand( sum(i**k,i,Integer(1),n))))
    

s1 = sigma(1)
print("sigma(1,n) = ", s1)

s3 = sigma(3)
print("sigma(3)   = ", s3 )
print("sigma(1)^2 = ", s1^2 )
print("The difference = ", expand(s3-s1^2) )

s5 = sigma(5)
s7 = sigma(7)
s9 = sigma(9)

print("eq(1.2): ")

lhs = s1^3
rhs = 1/4*s3 + 3/4*s5
print("lhs = ", lhs, "\nrhs = ", rhs) 
print("lhs - rhs= ", lhs-rhs, ", \nwhich is: ", expand(lhs-rhs)) 

lhs = s1^5
s9 = sigma(9)
rhs = 1/16*s5 + 5/8*s7 + 5/16*s9
print("lhs = ", lhs, "\nrhs = ", rhs) 
print("lhs - rhs= ", lhs-rhs, ", \nwhich is: ", expand(lhs-rhs)) 

# binomials
s2 = sigma(2)
lhs = s2
rhs = 2*binomial(n+1,3) + binomial(n+1,2)
print("lhs = ", lhs, "\nrhs = ", rhs) 
print("lhs - rhs= ", lhs-rhs, ", \nwhich is: ", expand(lhs-rhs)) 

lhs = s5
rhs = binomial(n+1,2) + 30*binomial(n+2,4) + 120*binomial(n+3,6)
print("lhs = ", lhs, "\nrhs = ", rhs) 
print("lhs - rhs= ", lhs-rhs, ", \nwhich is: ", expand(lhs-rhs)) 


poly,x,y = var("poly x y")
poly = 8*x^3+x^2 -9*y^2

poly = poly.subs(x=s1,y=s2)
print("eq.(1.4):", poly, ",\n which is: ", expand(poly) )

poly = 81*x^4 -x^2 -6*x*y - 9*y^2
poly = poly.subs(x=s2,y=s3)
print("eq.(1.5):", poly, ",\n which is: ", expand(poly) )

poly = 16*x^3 -x^2 -6*x*y - 9*y^2
poly = poly.subs(x=s3,y=s5)
print("eq.(1.6):", poly, ",\n which is: ", expand(poly) )

poly = 972*x^5 -7*x^3 -90*x^2*y - 375*x*y^2 - 500*y^3
s4 = sigma(4)
poly = poly.subs(x=s2,y=s4)
print("eq.(1.7):", poly, ",\n which is: ", expand(poly) )



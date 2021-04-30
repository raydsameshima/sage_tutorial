# IPython log file

# https://carpentries-incubator.github.io/sage-lesson/02-multiply-matrix-and-vector/

# x is predefined indeterminate (of course, we can overwrite it):
x
type(x)

# y is not:
# y

# Define a polynomial:
f=x**Integer(2)-x-Integer(1)
type(f)
f

sol= solve([f],x)

sol1 = sol[Integer(0)].rhs()
sol1.n()

sol2 = sol[Integer(1)].rhs()
sol2.n()

# Withoug declaring y and z?
# v = vector([x,y,z])

x,y,z = SR.var("x y z")
v = vector([x,y,z])
v

I3 = -identity_matrix(Integer(3))
I3

I3*v
-Integer(1)*v
v2 = v.subs(x=Integer(1),y=Integer(0),z=Integer(3))
v3 = v.subs([x==1,y==0,z==3])

print(v2)
print(v3)


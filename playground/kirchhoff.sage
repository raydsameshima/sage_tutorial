# Kirchhoff

# Declare variables for two loop circuit:
I1,I2,I3,E1,E2,R1,R2,R3 = var("I1,I2,I3,E1,E2,R1,R2,R3")

# Define a junction rule and two loop rules:
J1 = I1 + I3 == I2
L1 = E1 - R1*I1 - I2*R2 == Integer(0)
L2 = E2 - R3*I3 - I2*R2 == Integer(0)

# Assign the solution:
sol = solve( [J1,L1,L2], I1,I2,I3)

# Assign the symbolic expression for each current:
I1 = sol[0][0].rhs()
I2 = sol[0][1].rhs()
I3 = sol[0][2].rhs()

print("The symbolic expressions are:\n", I1, "\n", I2, "\n", I3 )


print("I1 is: ", I1.subs( [E1==6.0, E2==12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")
print("I2 is: ", I2.subs( [E1==6.0, E2==12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")
print("I3 is: ", I3.subs( [E1==6.0, E2==12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")

# Swapping E1, we obtain:
print("If we swap E1, then:")
print("I1 is: ", I1.subs( [E1==-6.0, E2==12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")
print("I2 is: ", I2.subs( [E1==-6.0, E2==12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")
print("I3 is: ", I3.subs( [E1==-6.0, E2==12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")

# Swapping E2, we obtain:
print("If we swap E2, then:")
print("I1 is: ", I1.subs( [E1==6.0, E2==-12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")
print("I2 is: ", I2.subs( [E1==6.0, E2==-12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")
print("I3 is: ", I3.subs( [E1==6.0, E2==-12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")

# Swapping E1 and E2, we obtain:
print("If we swap both E1 abd E2, then:")
print("I1 is: ", I1.subs( [E1==-6.0, E2==-12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")
print("I2 is: ", I2.subs( [E1==-6.0, E2==-12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")
print("I3 is: ", I3.subs( [E1==-6.0, E2==-12.0, R1==5.0, R2==20.0, R3==50.0]), " [amp]")


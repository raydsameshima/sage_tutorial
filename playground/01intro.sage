# IPython log file
# "logstart" is the function to store the inputs. 

# Declare a list of integers:
m = [[Integer(1),Integer(2)],[Integer(3),Integer(4)]]

# Define a matrix:
mm = matrix(m)

# Some trials:
# m**Integer(2)
mm**Integer(2)

# Undefined object:
# mi
mi = mm**(-Integer(1))

# Easy checks:
mm * mi
mi * mm

# To plot an identity function, I don't know why we don't have it yet, define id:
def id(x):
    return(x)

# Check the "type"    
type(id)

pp = plot( [sin,id], (Integer(0),Integer(1)) )

# Challenge:
"a" + "b"

# quit()

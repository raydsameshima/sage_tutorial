# sage_tutorial

My note on sage tutorial.

[v9.2](https://doc.sagemath.org/html/en/tutorial/index.html)

Without options, we can enter repl(read-eval-print-loop) environment.
Writing sage file, we can execute a sage file.
Meanwhile, we can also call the internal maxima:

```sage
   Optional arguments:
      file.[sage|py|spyx] -- run given .sage, .py or .spyx file

       -maxima [...]       -- run Sage's Maxima with given arguments
```

Within the sage shell, any unix shell command can be executed with ! sign:

```
sage: !ls                                                                                                
helloworld.sage  helloworld.sage.py  LICENSE  README.md  triangle.sage	triangle.sage.py

```

We can call an editor with %edit.

Object-oriented syntax

> In Sage, certain functions are attached to the type (or class) of V, and are called using an object-oriented syntax like in Java or C++, e.g., V.foo(...).  
> In some very common cases, the usual functional notation is also supported for convenience and because mathematical expressions might look confusing using object-oriented notation.



## Examples

### A system of linear equations

From [this video](https://youtu.be/mOxnEn9qWwo):

```
$ cat triangle.sage
# triangle.sage

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

$ sage triangle.sage
7
```

## Colon, Semicolon, newline

> a colon after the list of variable names.

```sage
def is_even(n):
    return n%2 == 0
```

> Semicolons are not needed at the ends of lins; a line is in most cases ended by a newline.

If we need to separate a line into two or more, put a backslash.

## List

```
age: list (range (2, 10)) == [2 .. 10]                                                                  
False
sage: list(range(2,10))                                                                                  
[2, 3, 4, 5, 6, 7, 8, 9]
sage: [2 .. 10]                                                                                          
[2, 3, 4, 5, 6, 7, 8, 9, 10]
sage: [2 .. 9]                                                                                           
[2, 3, 4, 5, 6, 7, 8, 9]
sage: list (range (2, 10)) == [2 .. 9]                                                                   
True
```

List in sage can be inhomogeneous:

```
sage: v = [1, "2", "hello world", 1.5, sin(x^2)]                                                         
sage: v                                                                                                  
[1, '2', 'hello world', 1.50000000000000, sin(x^2)]

sage: for i in [0 .. 4]: 
....:     print( v[i] )                                                                                  
1
2
hello world
1.50000000000000
sin(x^2)
```

## Dictionarry (associative array)

```
sage: d = {"hi":-2, 3/8:pi, 1:"hello"}                                                                   
sage: d[1]                                                                                               
'hello'
sage: d["hi"]                                                                                            
-2
sage: d["Hello"]                                                                                         
---------------------------------------------------------------------------
KeyError                                  Traceback (most recent call last)
<ipython-input-104-ad0faadfb183> in <module>
----> 1 d["Hello"]

KeyError: 'Hello'
```

If two keys conflict:

```
sage: d = {"hi":-2, 3/8:pi, 1:"hello", 1:"world"}                                                        
sage: d                                                                                                  
{'hi': -2, 3/8: pi, 1: 'world'}
```

## History

To show the history of command with line-numbers:

```
%history -n
```

## IO
\# is used for the line-level comment.


```sage
$ cat helloworld.sage 
# helloworld.sage
# this is a line comment

print("hello, sage!")
```

```sage
$ sage helloworld.sage 
hello, sage!

```

On the repl(read-eval-print-loop) enviromnent, 

```sage
load("helloworld.sage")
```

### standalone sage script

After chmod +x, we can run any sage script:

```
$ cat factor 
#!/usr/bin/env sage

import sys
from sage.all import *

if len(sys.argv) != 2:
    print("Usage: %s <n>" % sys.argv[0])
    print("Outputs the prime factorization of n.")
    sys.exit(1)

print(factor(sage_eval(sys.argv[1])))

$ ./factor 2021
43 * 47
```

## Plotting




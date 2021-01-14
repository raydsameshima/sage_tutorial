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

## Plotting




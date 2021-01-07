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



# **Understanding Shell Script's idiom: 2>&1**

### A quick introduction to I/O redirection:

**Simply put, redirection is the mechanism used to send the output of a command to another place.**

 For instance, if we just `cat` a file, its output will be printed in the screen, by default:

`cat test.txt`

But we can redirect this output to another place. Here, for example, we are redirecting it to a file called **output.txt** :

`cat test.txt > output.txt`

If we print **output.txt** `cat output.txt` we can get the contents of **test.txt**

> here we changed the **standard output (stdout)** location to a file(output.txt), so it doesn’t use the screen anymore.

It’s also important to know that there are this other place, called **standard error (stderr)**, `to where programs can send their error messages`. So if we try to cat a file that doesn’t exist, like this:


`cat nop.txt > output.txt`

`cat: nop.txt: No such file or directory`

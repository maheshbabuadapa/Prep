# **Understanding Shell Script's idiom: 2>&1**

### A quick introduction to I/O redirection:

Simply put, redirection is the mechanism used to send the output of a command to another place. For instance, if we just `cat` a file, its output will be printed in the screen, by default:

`cat test.txt`

But we can redirect this output to another place. Here, for example, we are redirecting it to a file called output.txt:

`cat test.txt > output.txt`

We can print output.txt   `cat output.txt`  to get the contents of `test.txt`

> here we changed the standard output (stdout) location to a file(output.txt), so it doesn’t use the screen anymore.

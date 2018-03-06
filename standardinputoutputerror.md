# **Understanding Shell Script's idiom: 2>&1**

### A quick introduction to I/O redirection:

**Simply put, redirection is the mechanism used to send the output of a command to another place.**

 For instance, if we just `cat` a file, its output will be printed in the screen, by default:

`cat test.txt`

But we can redirect this output to another place. Here, for example, we are redirecting it to a file called `output.txt` :

`cat test.txt > output.txt`

If we print `output.txt` `cat output.txt` we can get the contents of `test.txt`

> here we changed the **standard output (stdout)** location to a file(output.txt), so it doesn’t use the screen anymore.

It’s also important to know that there are this other place, called **standard error (stderr)**, `to where programs can send their error messages`.

So if we try to `cat` a file that doesn’t exist, like this:


`cat nop.txt > output.txt`

`cat: nop.txt: No such file or directory`


> **Even if we redirect the stdout to a file, we still see the error output in the screen,**  because we are redirecting just the standard output, not the standard error.



### quick introduction to file descriptors:

A file descriptor is nothing more that a positive integer that represents an open file. If you have 100 open files, you will have 100 file descriptors for them.

**we just need to know that there are file descriptors for**     

**Standard Output (stdout) = "1"**

**Standard Error (stderr) = "2"**

when we redirected the output of `cat test.txt` to `output.txt`, we could rewrite the command like this:

`cat test.txt 1> output.txt`



This **"1"** is just the file descriptor for **stdout**.

 The syntax for redirecting is

  ``[FILE_DESCRIPTOR]>``, leaving the file descriptor out is just a shortcut to **1>**


  We can use **&1** to refer the value of the file descriptor **1 (stdout)**.

  So when we use  

  **2>&1**

  we are basically saying

   **“Redirect the `stderr` to the same place we are redirecting the `stdout`”**.


  And that’s why we can do something like this to redirect both **stdout** and **stderr** to the same place:

`cat test.txt > output.txt 2>&1`

`cat output.txt`

`cat nop.txt > output.txt 2>&1`

`cat output.txt`


`cat: nop.txt: No such file or directory`


### We can use **&1** to refer the value of the file descriptor **1 (stdout)**.  
### we can use **2>&1** and instruct the script that **stderr**(thrown errors/error output), also must be redirected to **stdout** (by specifying the **&1**)


 ### **`command > output` is just a shortcut for `command 1> output`**


 ### **`cat test.txt > output.txt` is just a shortcut for `cat test.txt 1> output.txt`**




We can use ``&[FILE_DESCRIPTOR]`` to refer a file descriptor value

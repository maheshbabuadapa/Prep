# **Shell Tips**

#### command to check whether a file exists: <br />

* `test -f FILENAME/pathofthefile` (or)  `[ -f FILENAME/pathofthefile ]`

>example:                 <br />
 `test -f /etc/passwd3 ; echo $?`   (or) `[ -f /etc/passwd3 ] ; echo $?`    <br />
if the output is **0** then file exists in the path(true) <br />
if the output is **1** then file exists in the path(true)

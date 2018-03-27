#SHELL TIPS

#### command to check whether a file exists

* `test -f FILENAME/pathofthefile` (or)  `[ -f FILENAME/pathofthefile ]`

>example:                 <br /> <br />
 `test -f /etc/passwd3 ; echo $?`     <br />
if the output is **0** then file exists in the path(true) <br />
if the output is **1** then file exists in the path(true)

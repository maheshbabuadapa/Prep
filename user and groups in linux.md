

Syntax for the each record (every system user account has a record) in the ` /etc/passwd ` file:                                                                                          <br />
` [username]:[x]:[UID]:[GID]:[Comment]:[Home directory]:[Default shell] `

    * Fields [username] and [Comment] are self explanatory.
    * The x in the second field indicates that the account is protected by a shadowed password (in /etc/shadow), which is needed to logon as [username].
    * The [UID] and [GID] fields are integers that represent the User IDentification and the primary * * Group IDentification to which [username] belongs, respectively.
    * The [Home directory] indicates the absolute path to [username]’s home directory, and
    * The [Default shell] is the shell that will be made available to this user when he or she logins the system.


> lets say :
[root@ip-172-31-45-230 ~]# cat /etc/passwd
root:x:0:0:root:/root:/bin/bash

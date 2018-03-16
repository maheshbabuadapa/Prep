*  ssh into your ec2 instance with your default credentials(username and .pem key file): ** <br />
` ssh -i <path to the .pem key file> <default username>@<Public DNS of ec2 instance> `  <br /> <br />
* create a new user: <br />
` sudo adduser <newusername> ` <br /> <br />
* add the new user to the sudoers file:  <br />
` sudo visudo ` <br /> <br />
* add the following line after the comment line, “User privilege specification”:





* copy the public key of the default user present in : ` ~/.ssh/authorized_keys `
*  ` cat ~/.ssh/authorized_keys `



* Switch to new user:
` sudo su <newusername> `



* Create the SSH directory and authorized users file, with the correct permissions: <br />
` mkdir ~/.ssh` <br />
`chmod 700 ~/.ssh` <br />
`touch ~/.ssh/authorized_keys` <br />
`chmod 600 ~/.ssh/authorized_keys`

* paste the public key copied from the dafault user's home directory : `~/.ssh/authorized_keys` to the new user's authorized_keys file: <br />
` vi ~/.ssh/authorized_keys `


* ssh into the instance with th new newusername by using the previous .pem file: <br />
` ssh -i <path to the .pem key file> <newusername>@<Public DNS of ec2 instance> `




> [brianlinkletter.com](http://www.brianlinkletter.com/how-to-set-up-a-new-userid-on-your-amazon-aws-server-instance/)

dont forget to try

# **Installing , Configuring Ansible in EC2 instances:**


![](assets/markdown-img-paste-20180404100658231.png)

#### Installing the Ansible in Master(EC2 instance):   <br />   <br />
* `sudo yum install ansible`


#### Configuring the node(another EC2 instance):   <br />   <br />
* In **Master** generate ssh keypair using:   <br />   <br />
*  `ssh-keygen -t rsa`   <br />   <br />
* copy the public key of **Master** to ~/.ssh/authorized_keys file in **node**   <br />   <br />
* `cat ~/.ssh/id_rsa.pub` (copy the output)   <br />   <br />
* In node open the file in ~/.ssh/authorized_keys and paste the public key of **Master** :   <br />   <br />
* `vi authorized_keys`



![](assets/markdown-img-paste-20180404103515846.png)



> After completing the above process we can directly ssh to the **node**(EC2 instance) <br />

![](assets/IMG_04042018_070805_0.png)


#### Configuring the hosts file in **Master**(EC2 instance):   <br />   <br />
* In **Master** go to /etc/ansible/hosts   <br />   <br />
* `vi /etc/ansible/hosts`   <br />   <br />
* add the group name with in "[ ]" (square brackets) and add the details of the **node** in the next line (username@ip)


 ![](assets/IMG_04042018_093548_0.png)



 #### Running ansible commands from **Master**(EC2 instance):   <br />   <br />
 * After completing the above configuration process, run a command from **Master** to **node**   <br />   <br />
 * ` ansible -i hosts nodes -a "cat /etc/passwd" `


![](assets/markdown-img-paste-20180404100145995.png)
![](assets/markdown-img-paste-20180404104634890.png)








 #### Running ansible playbook from **Master**(EC2 instance):   <br />   <br />
* `ansible-playbook -v createafile.yml`   <br />   <br />


![](assets/markdown-img-paste-20180404102758496.png)


![](assets/markdown-img-paste-2018040410201787.png)   <br />   <br />
![](assets/markdown-img-paste-20180404101726814.png)

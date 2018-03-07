### Installation of **JBoss 7.1.1 Final** in **Red Hat Enterprise Linux Server**

* `yum install java-1.6.0-openjdk-devel`

* `java -version`

* `yum install -y wget unzip`

* `wget http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.zip`

* `unzip jboss-as-7.1.1.Final.zip -d /usr/share`

* `adduser jboss`

* `chown -fR jboss.jboss /usr/share/jboss-as-7.1.1.Final/`



* `su jboss`



* `cd /usr/share/jboss-as-7.1.1.Final/bin/`

* `./add-user.sh`



> You should see the following message on the console after executing the command:
 What type of user do you wish to add? <br />
 a) Management User (mgmt-users.properties)<br />
b) Application User (application-users.properties)<br />
(a): a<br />
We select “a”, next you should see the following message:
Enter the details of the new user to add.<br />
Realm (ManagementRealm) :<br />
Username : jboss<br />
Password :<br />
Re-enter Password :
* hit enter for Realm to use default, then provide a username and password
We select the default value for the Realm (ManagementRealm), by hitting enter, and select **“jboss” as our username. By default, we supply “jb0ss” as our password**, of course, you can provide any password you prefer here.

* `./standalone.sh -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0&`

> Type in the following in your browser window

http://yourip::9990/

_It will ask for the credentials, enter the user name and password created previously at `ManagementRealm`_

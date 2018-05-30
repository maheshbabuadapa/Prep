### Installation of AWS CLI in linux:

check for version of python installed
* ` python --version ` ( if necessary: `sudo yum install python` , [docs.aws.amazon.com](https://docs.aws.amazon.com/cli/latest/userguide/awscli-install-linux-python.html) )



#### After installation of python:
* ` curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" `

* ` unzip awscli-bundle.zip ` (if necessary: `sudo yum install unzip`)

* ` sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws `     (or)   ` ./awscli-bundle/install -b ~/bin/aws `

* ` aws --version ` (to check whether the installation is sucessful (or) not )


>For reference: [docs.aws.amazon.com](https://docs.aws.amazon.com/cli/latest/userguide/awscli-install-bundle.html#install-bundle-user)



#### To configure you account in installed AWS CLI:
* `aws configure`
>AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE   <br />
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY   <br />
Default region name [None]: us-west-2   <br />
Default output format [None]: json   <br />





>if there is an error saying: " Could not connect to the endpoint URL "
then you need to change the region in ` ~/.aws/config ` <br />
check for any alphabets at the end of the availability zone(region=us-east-1a) and remove them(region=us-east-1)



#### Installation of boto in linux:
First install pip:
* `sudo yum install python-pip`

Using pip install boto:
* `pip install -u boto`





![](assets/IMG_03042018_0248091333_0.png)
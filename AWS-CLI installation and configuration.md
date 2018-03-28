### Installation of AWS CLI in linux:

check for version of python installed
* ` python --version ` ( if necessary: `sudo yum install python` , [docs.aws.amazon.com](https://docs.aws.amazon.com/cli/latest/userguide/awscli-install-linux-python.html) )







#### After installation of python:



* ` curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" `

* ` unzip awscli-bundle.zip ` (if necessary: `sudo yum install unzip`)

* ` sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws `     (or)   ` ./awscli-bundle/install -b ~/bin/aws `

* ` aws --version ` (to check whether the installation is sucessful (or) not )



>For reference: [docs.aws.amazon.com](https://docs.aws.amazon.com/cli/latest/userguide/awscli-install-bundle.html#install-bundle-user)

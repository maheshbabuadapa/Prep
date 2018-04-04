#### To view User-Data & Instance Meta-Data:   <br />

`curl http://169.254.169.254/latest/user-data/`
<br />

`curl http://169.254.169.254/latest/meta-data/`


#### To see the instance region:

* ` curl http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}' `                     <br /> (or) <br />
* `curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | python -c "import json,sys; print json.loads(sys.stdin.read())['region']"`  <br /> (or) <br />
* `curl -s 169.254.169.254/latest/meta-data/placement/availability-zone | sed 's/.$//'`






> _All the above commands must be executed on the shell of the target instance_


#### To view ec2 instances in the desired region:   <br />   <br />

* `aws ec2 describe-instances --region us-east-1`



#### To start an ec2 instances with instance id:   <br />   <br />
* `aws ec2 start-instances --instance-ids i-04b97d9163360d14f `



#### To start an ec2 instances with instance id:   <br />   <br />
* `aws ec2 stop-instances --instance-ids i-04b97d9163360d14f `

![](assets/IMG_02042018_024809_0.png)

#### To start an ec2 instances with instance id:   <br />   <br />
* `aws ec2 terminate-instances --instance-ids i-04b97d9163360d14f`

![](assets/IMG_04042018_023935_0.png)


#### To view S3 buckets :   <br />   <br />
* `aws s3 ls`



![](assets/IMG_29032018_154237_0.png)

#### To view contents of desired bucket in S3  :   <br />   <br />
* `aws s3 ls s3://okoye3`



#### To sync contents of local directory to desired bucket in S3  :   <br />   <br />
* `aws s3 sync s3://okoye3 .`




![](assets/IMG_28032018_183413_0.png)




#### To sync contents of local directory to desired bucket in S3  :   <br />   <br />
* `aws s3 sync . s3://okoye3`




![](assets/IMG_28032018_182530_0.png)






#### To delete the bucket:
if bucket is empty : `aws s3 rb s3://name of the bucket`

if bucket has contents : `aws s3 rb s3://name of the bucket --force`


![](assets/IMG_28032018_204105_0.png)

#### To know the IAM users of the account:

![](assets/IMG_29032018_161541_0.png)

>For reference: [docs.aws.amazon.com](https://docs.aws.amazon.com/cli/latest/userguide/using-s3-commands.html)

### To view User-Data & Instance Meta-Data

`curl http://169.254.169.254/latest/user-data/`
<br />

`curl http://169.254.169.254/latest/meta-data/`


### To see the instance region:

* ` curl http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}' `                     <br /> (or) <br />
* `curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | python -c "import json,sys; print json.loads(sys.stdin.read())['region']"`  <br /> (or) <br />
* `curl -s 169.254.169.254/latest/meta-data/placement/availability-zone | sed 's/.$//'`






> _All the above commands must be executed on the shell of the target instance_

#### To know about your servers's date and time:

* `date`

#### To know UTC time:

* `date -u`

#### To know about your server's time zone:

* `timedatectl status`

#### To find the list of all available timezones:

* `timedatectl list-timezone`

#### To grep the asian(indian) timezone:

* `timedatectl list-timezone | grep Asia/Kolkata`

#### To set the desired time zone( we will set the indian time zone):

* `timedatectl set-timezone Asia/Kolkata`

#### To set the timezone to **UTC**:

* `timedatectl set-timezone UTC`

> For reference: [cyberciti.biz](https://www.cyberciti.biz/faq/centos-linux-6-7-changing-timezone-command-line/).

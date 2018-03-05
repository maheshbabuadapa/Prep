* `crontab -e`   is used to add the crontabs 

* Let’s say `* * * * * /home/vagrant/test.sh`

In the above example:

*     *         *   *    *        command to be executed   
-     -     -   -    -
|     |     |   |    |
|     |     |   |    +----- day of week (0 - 6) (Sunday=0)
|     |     |   +------- month (1 - 12)
|     |     +--------- day of        month (1 - 31)
|     +----------- hour (0 - 23)
+------------- min (0 - 59)

MIN HOUR DOM MON DOW CMD
  *     *     *      *        *      /home/vagrant/test.sh

* `cat test.sh`
#!/bin/bash
echo `date` >> /home/vagrant/version

* `cat version`
Sun Mar 4 02:53:01 UTC 2018
Sun Mar 4 02:54:01 UTC 2018
Sun Mar 4 02:55:01 UTC 2018
Sun Mar 4 02:56:01 UTC 2018
Sun Mar 4 02:57:01 UTC 2018
Sun Mar 4 02:58:01 UTC 2018
Sun Mar 4 02:59:01 UTC 2018
Sun Mar 4 03:00:01 UTC 2018


### “Dont forget to change the permissions of the files 
associated to that crontab”

In this case 
* `sudo chmod 777 test.sh`

* `sudo chmod 777 version`


`crontab -l` to list the all configured jobs



### We can use comma operator(,)  to give multiple values in each field

* Let’s say

 `0 0 1,15 * * echo `hello` >> /tmp/test.txt`


In the above example

The cron job will run on zeroth minute of zeroth hour on every 1st and 15th day of every month of every day of the week


### We can use the forward slash operator(/) to do an interval 



* `*/10 * * * * echo`hello` >>/tmp/test.txt`

In the above example
The cron job will run on 10th minute of every hour,day.month,day of the week



* `0 0 */3 * * echo `hello` >> /tmp/test.txt`

In the above example 
The cron job will run on  zeroth minute of zeroth hour on every 1st and 15th day of every month of every day of the week

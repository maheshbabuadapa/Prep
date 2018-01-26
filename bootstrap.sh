#!/bin/bash
yum -y update
yum -y install wget
cd /usr/local/bin/
wget https://github.com/PerformLine/DevOpsEval/blob/master/bin/eval-server.linux-x86_64?raw=true
mv eval-server.linux-x86_64\?raw\=true /usr/local/bin/eval.bin
chmod 711 /usr/local/bin/eval.bin
echo " [Unit]
After       = network.target

[Service]
ExecStart = /usr/local/bin/eval.bin

[Install]
WantedBy    = multi-user.target
"   >> /etc/systemd/system/eval.service
systemctl enable eval.service
yum install -y iptables-services
systemctl enable iptables
sed -i 's/IPTABLES_SAVE_ON_RESTART="no"/IPTABLES_SAVE_ON_RESTART="yes"/' /etc/sysconfig/iptables-config
sed -i 's/IPTABLES_SAVE_ON_STOP="no"/IPTABLES_SAVE_ON_STOP="yes"/' /etc/sysconfig/iptables-config
iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j DNAT --to `hostname -i`:8086
iptables -A FORWARD -p tcp -d `hostname -i` --dport 8086 -j ACCEPT
service iptables save
reboot

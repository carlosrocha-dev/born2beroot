#!/usr/bin/bash

hour=$(date "+%T")
architecture=$(uname -a)
p_processor=$(grep 'cpu cores' /proc/cpuinfo | tr -d 'cpu cores \t:')
v_processor=$(grep -c '^processor' /proc/cpuinfo)
total_mem=$(free -m | awk '/Mem.:/ {print $2}')
used_mem=$(free -m | awk '/Mem.:/ {print $3}')
pct_use_mem=$(free -m | awk '/Mem.:/ {printf("%.2f"), $3/$2*100}')
total_disk=$(df -h --total | awk '/total/ {print $2}')
used_disk=$(df -h --total | awk '/total/ {print $3}')
pct_use_disk=$(df -h --total | awk '/total/ {print $5}')
cpu_load=$(top -bn1 | awk '/Cpu/ {print $2}')
last_boot=$(who -b | awk '{print $4" "$5}')
all_lvms=$(lsblk | grep -c lvm)

if [ $all_lvms -gt 0 ]
then
	lvm='yes'
else
	lvm='no'
fi

tcp_connections=$(ss | grep -c tcp)
users=$(who -u | awk '{print $1}' | sort | uniq | wc -l)
ip=$(hostname -I | awk '{print $1}')
mac=$(ip addr show | awk '/link\/ether/ {print $2}')
sudo=$(cat /var/log/sudo/sudo.log | grep -c -i "command=")

wall << status
	#========= Monitoring.sh $hour ===========#
	#name: $architecture
	#CPU physical: $p_processor
	#vCPU: $v_processor
	#Memory Usage: $used_mem/${total_mem}MB (${pct_use_mem}%)
	#Disk Usage: $used_disk/${total_disk}b (${pct_use_disk})
	CPU Load: $cpu_load%
	#Last boot: $last_boot
	#LVM use: $lvm
	#Connections TCP: $tcp_connections ESTABLISHED
	#User log: $users
	#Network: IP $ip ($mac)
	#Sudo: $sudo cmd
status

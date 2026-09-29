#!/bin/bash

echo "Hostname:"
hostname

check_disk() {
	echo ""
	echo "Disk usage:"
	usage=$(df -h "$1" | awk 'NR==2 {print $5}' | tr -d '%')
	if [ "$usage" -ge $2 ]; then
    		echo "Disk: PROBLEM HIGH USAGE"
	else
    		echo "Disk: OK"
	fi
}

check_ram() {
	echo ""
	echo "RAM usage"
	total=$(free  | awk '/Mem:/ {print $2}')
	used=$(free  | awk '/Mem:/ {print $3}')
	perc=$((used * 100 / total))
	if [ "$perc" -ge $1 ]; then
    		echo "RAM: WARNING ($perc%)"
		return 1
	else
    		echo "RAM: OK ($perc%)"
		return 0
	fi
}

echo ""
echo "System load:"
uptime

check_service() {
        echo ""
	service=$1	
	echo "$service status:"
	status=$(systemctl is-active "$service")
	if [ "$status" = "active" ]; then
    		echo "$service: OK"
	else
    		echo "$service: PROBLEM"
	fi
}

check_mount() {
        echo ""
	mount=$1
	echo "$mount mount"
	findmnt $mount
	if [ $? -eq 0 ]; then
    		echo "$mount: OK"
	else
    		echo "$mount: PROBLEM"
	fi
}

main() {
    check_service ssh
    check_mount /data
    check_disk / 80
    check_ram 80
}
main

echo ""
echo "Server check completed."
echo $?

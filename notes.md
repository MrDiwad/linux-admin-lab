`hostnamectl` - basic information about the system and hostname  
`uname` - information about the kernel  
`df` - used to check filesystem usage (disk space, etc.)  
`free` - used to check RAM usage  
`ls -ld` - used to check directory permissions, owner and group  
`chmod` - used to change file and directory permissions  
`chown` - used to change the owner of a file or directory  
`chgrp` - used to change the group of a file or directory  
`id` - used to display information about a user and their groups  
`ps` - used to display running processes  
`ps -A` - used to display all running processes  
`ps --forest` - used to display processes in a tree structure  
`top` - used to monitor running processes and system resource usage  
`ip addr` - used to display network interfaces, their state and IP addresses  
`ip route` - used to display the routing table and default gateway  
`ping` - used to check connectivity with another host
`systemctl` - used to manage and check system services
`systemctl status` - used to check the status of a service
`systemctl list-units`- used to list loaded systemd units
`grep` - used to search for text in command output or files
`ss` - used to display network sockets and listening ports
`journalctl` - used to view system logs  
`journalctl -u` - used to view logs for a specific systemd service  
`journalctl -n` - used to limit the output to the latest entries  
`grep` - used to search for specific text in command output or files
lsblk - used to display block devices, disks and partitions
lsblk -f - used to display filesystems, UUIDs and mount points
df -h - used to display filesystem disk usage
du -h - used to display disk usage of files and directories
du -h --max-depth=1 - used to display disk usage of directories at a specific level
fdisk - used to create and manage disk partitions
mkfs.ext4 - used to create an ext4 filesystem
mount - used to mount a filesystem to a directory
UUID - a unique identifier assigned to a filesystem
fstab - a configuration file used to define filesystems that should be mounted automatically

mount -a - used to mount all filesystems configured in /etc/fstab
cat /etc/fstab - used to display the filesystem mount configuration

ufw status verbose - used to display detailed UFW status, default policies and rules
ufw status numbered - used to display UFW rules with their numbers
ufw allow from - used to allow traffic only from a specific IP address or network
ufw default deny incoming - used to block incoming traffic by default
ufw delete - used to remove a UFW rule
ss -l - used to display listening network sockets
ss -ltnp - used to display listening TCP sockets, ports and associated processes

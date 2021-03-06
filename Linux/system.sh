#!/bin/bash

# INSTRUCTIONS: Edit the following placeholder command and output filepaths
# For example: cpu_usage_tool > ~/backups/cpuuse/cpu_usage.txt
# The cpu_usage_tool is the command and ~/backups/cpuuse/cpu_usage.txt is the filepath
# In the above example, the `cpu_usage_tool` command will output CPU usage information into a `cpu_usage.txt` file.
# Do not forget to use the -h option for free memory, disk usage, and free disk space

# Free memory output to a free_mem.txt file
free -h | awk 'FNR == 2 {print $3}' > ~/backups/freemem/free_mem.txt

# Disk usage output to a disk_usage.txt file
df -H | awk 'FNR ==4' > ~/backups/diskuse/disk_usage.txt

# List open files to a open_list.txt file
lsof | awk '{print $9}' > ~/backups/openlist/open_list.txt

# Free disk space to a free_disk.txt file
df -H | awk 'FNR == 4 {print $4}' > ~/backups/freedisk/free_disk.txt

#!/bin/bash
date=$(date +%Y-%m-%d)
backup_file="/backup/important-data-$date.tar"
cd /data
tar -cf "$backup_file" important-data

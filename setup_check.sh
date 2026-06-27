#!/usr/bin/env bash

echo "TASK 2 : SETUP SCRIPT"
echo " "

echo "HOSTNAME:$(hostname)"
echo "USER: " "$USER"
echo "OS VERSION:$(uname -a)"
echo "DATE:$(date)"



for tool in git python pip3 ros2; do
	if command -v $tool &>/dev/null; then
		echo " $tool [OK]"
	else
		echo " $tool [MISSING]"
	fi
done

df -B 1G | grep -v "Partition" | while read -r FILESYSTEM _ _ AVAIL _ MOUNTED; do
	if [[ "$FILESYSTEM" == /dev/* ]]; then
		if [ "$MOUNTED" = "/boot/efi" ]; then
			continue
		fi
		
		if [ "$AVAIL" -lt 5 ]; then
			echo "[LOW DISK]"
		fi
	fi
done

echo " SCRIPT COMPLETED"


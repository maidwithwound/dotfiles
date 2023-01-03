modprobe zram
echo 3G > /sys/block/zram0/disksize
mkswap /dev/zram0
swapon /dev/zram0

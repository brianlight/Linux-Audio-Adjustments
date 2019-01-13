
#!/bin/bash

#Reduce Audio thread latency
chrt -f -p 54 $(pgrep ksoftirqd/0)
chrt -f -p 54 $(pgrep ksoftirqd/1)
chrt -f -p 54 $(pgrep ksoftirqd/2)
chrt -f -p 54 $(pgrep ksoftirqd/3)

#Reduce USB latency
modprobe snd-usb-audio nrpacks=1

#Reduce operating system latency
echo noop > /sys/block/mmcblk0/queue/scheduler
echo 1000000 > /proc/sys/kernel/sched_latency_ns
echo 100000 > /proc/sys/kernel/sched_min_granularity_ns
echo 25000 > /proc/sys/kernel/sched_wakeup_granularity_ns

exit

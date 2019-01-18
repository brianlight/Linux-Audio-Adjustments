#!/bin/bash
border()
{
    title="| $1 |"
    edge=$(echo "$title" | sed 's/./-/g')
    echo "$edge"
    echo "$title"
    echo "$edge"
}

border "Removing Linux Audio Tuning"

rm /usr/bin/Sound.sh
rm /etc/security/limits.conf
mv /etc/security/limits.conf.bak /etc/security/limits.conf
rm /etc/sysctl.conf
sed -i '/usr/d' /etc/rc.local

mv /etc/sysctl.conf.bak /etc/sysctl.conf

sleep 4
border()
{
    title="| $1 |"
    edge=$(echo "$title" | sed 's/./-/g')
    echo "$edge"
    echo "$title"
    echo "$edge"
}

border "Rebooting System"

reboot

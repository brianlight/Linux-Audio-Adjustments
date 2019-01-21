#!/bin/bash

border()
{
    local title="| $1 |"
    local edge=${title//?/-}
    echo -e "${edge}\n${title}\n${edge}"
    sleep 1
}

border 'Downloading Sound File'

wget https://github.com/dynobot/Linux-Audio-Adjustments/raw/master/Sound.sh -O /usr/bin/Sound.sh
chmod 755 /usr/bin/Sound.sh

border 'Increasing Sound Group Priority'

[[ -f /etc/security/limits.conf ]] && mv /etc/security/limits.conf /etc/security/limits.conf.bak
echo '#New Limits' > /etc/security/limits.conf
echo '@audio - rtprio 99' >> /etc/security/limits.conf
echo '@audio - memlock 512000' >> /etc/security/limits.conf
echo '@audio - nice -20' >> /etc/security/limits.conf

border 'Improving Network Latency'

echo "#New Network Latency" > /etc/sysctl.d/network-latency.conf
echo 'net.core.rmem_max = 16777216' >> /etc/sysctl.d/network-latency.conf
echo 'net.core.wmem_max = 16777216' >> /etc/sysctl.d/network-latency.conf

border 'Creating System Service'

[[ -f /etc/rc.local ]] || echo -e '#/bin/bash\n\nexit 0' > /etc/rc.local
grep -q '/usr/bin/Sound.sh' /etc/rc.local || sed -i '\|^#!/bin/.*sh|a\/usr/bin/Sound.sh' /etc/rc.local
chmod +x /etc/rc.local
#systemctl enable rc-local || systemctl enable rc.local

border 'Rebooting System'


reboot

# Linux-Audio
Debian Based RPi tweaks for improved sound. For TinyCore based systems see [TinyCore Sound Tweaks](https://github.com/dynobot/TinyCore-Sound-Adjustments)
 
 To improve the sound of the Raspberry Pi using Debian and other distributions of Linux several parameters can be adjusted.
 1) Improving the priority of the Audio group
 2) Improving the audio thread priority
 3) Improving the latency of the Operating System with Kernel adjustments
 4) Improve network latency
 ______________________________________________________________________________________________________________________________
 ## Prerequisites 
 1) nano file editor; apt install nano
 2) Or the ability to use vi editor, your choice.
 
**Should work on any SBC running Debian based OS, has been tested on:**

- Raspberry Pi (v1) model B
- Raspberry Pi 2 model B
- Raspberry Pi 3 model B and B+
- Allo Sparky
- ASUS Tinkerboard
- Odroid C2
 ______________________________________________________________________________________________________________________________
 ## Automated Install
 curl -sSL https://github.com/dynobot/Linux-Audio-Adjustments/raw/master/basic-install.sh | bash
 
 ##### Optional method:
 - wget https://github.com/dynobot/Linux-Audio-Adjustments/raw/master/basic-install.sh
 - chmod 755 basic-install.sh
 - sudo ./basic-install.sh
 ## Automated Removal
 curl -sSL https://github.com/dynobot/Linux-Audio-Adjustments/raw/master/remove.sh | bash
 
 ##### Optional method:
 - wget https://github.com/dynobot/Linux-Audio-Adjustments/raw/master/remove.sh
 - chmod 755 remove.sh
 - sudo ./remove.sh
 
 ____________________________________________________________________________________________________________________________




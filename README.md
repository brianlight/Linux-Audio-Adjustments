# Linux-Audio
Debian Based RPi tweaks for improved sound.
 
 To improve the sound of the Raspberry Pi using Debian and other distributions of Linux several parameters can be adjusted.
 1) Improving the priority of the Audio group
 2) Imroving the audio thread priority
 3) Improving the latency of the Operating System with Kernel adjustments
 4) Improve network latency
 ______________________________________________________________________________________________________________________________
 # Prerequisites 
 nano file editor; apt install nano
 Or the ability to use vi editor, your choice.
 ______________________________________________________________________________________________________________________________
 # Kernel Adjustments and Audio Thread Priority
 1) Create file in /usr/bin called Sound.sh with the text editor nano; nano Sound.sh
 2) Copy and past the contents of Sound.sh into the file, change permissions to 755
 3) Create a service in /etc/systemd/system called sound.service with nano; nano sound.service
 4) Copy and paste the contents of sound.service into the file
 5) enable the service; systemctl enable sound.service
 6) start the service; systemctl start sound.service
 
 # Audio Group Priority
 1) Copy and past the contents of limits.conf into /etc/security/limits.conf, before the last line starting with #End of file.
 
 # Network Latency
 1) Copy and past the contents of sysctl.conf into /etc/sysctl.conf

# Install and launch X100 (non-docker version) easily with just 2 commands:


1) cd ~ && curl https://raw.githubusercontent.com/TatoEb/pure-adss-x100/main/InstallPureX100.sh -Lo run_pure.sh && sudo chmod +x *.sh && ./run_pure.sh


2) ./X100p.sh


To detach from your screen session press the combination:  Ctrl+A D 


To reattach to the detached session use the command:  sudo screen -r X100


To stop X100 press:  Ctrl+C (if it's opened on screen and running)


To start X100 again enter:  ./X100p.sh


To change X100' config file use this script:  ./cX100p.sh

(after every changes in x100-config.txt you must restart X100 in order to start with new parameters)

P.S. If you have your own *.ovpn files and you want to add them to X100 then just create a folder in /media/put-your-ovpn-files-here/  with a name of your VPN service, put your *.ovpn files with credentials.txt (if it's needed) and possibly with other files (*.crt, *.key,*.pem if they are needed) to this folder and run X100. You can add as many folders as VPNs you have. 

Good luck and God bless Ukraine!
Glory to Ukraine!

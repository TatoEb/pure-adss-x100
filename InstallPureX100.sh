cd ~ && sudo rm -rf pure-adss-x100 && sudo apt-get update -y && sudo apt-get install git wget screen mc vnstat sed unzip tar -y && sudo apt-get remove needrestart -y && sudo curl https://raw.githubusercontent.com/ihorlv/db1000nX100/main/source-code/scripts/install-x100slim-into-ubuntu.bash | sudo bash && cd ~ && git clone https://github.com/TatoEb/pure-adss-x100.git && cd pure-adss-x100 && sudo chmod +x *.sh && sudo cp ~/pure-adss-x100/*.* ~ && sudo rm -rf pure-adss-x100 && cd ~ && ./bac.sh && cd /media && sudo rm -rf put-your-ovpn-files-here && sudo mkdir put-your-ovpn-files-here && cd ~ && cd /root/x100/docker/x100-for-docker/put-your-ovpn-files-here && sudo cp x100-config.txt /media/put-your-ovpn-files-here && cd ~ && sudo cp ovpn.zip /media/put-your-ovpn-files-here && cd /media/put-your-ovpn-files-here ; sudo sed -i 's/initialDistressScale=50/initialDistressScale=500/g' x100-config.txt ; sudo sed -i 's/delayAfterSessionMinDuration=15/delayAfterSessionMinDuration=1/g' x100-config.txt ; sudo sed -i 's/delayAfterSessionMaxDuration=45/delayAfterSessionMaxDuration=5/g' x100-config.txt ; cd ~ && sudo chmod 777 -R /media/put-your-ovpn-files-here && cd ~ && sudo rm -rf ovpn.zip bac.sh run_pure.sh InstallPureX100.sh README.md pure-adss-x100 && cd /media/put-your-ovpn-files-here && unzip -qq ovpn.zip && sudo rm -rf ovpn.zip && sudo apt-get install needrestart -y ; [ ! -d "/media/backup" ] || [ -z "$(ls -A /media/backup 2>/dev/null)" ] && sudo mcedit x100-config.txt ; cd ~ && ./new_cred_p.sh && ./res.sh && ./fix24.04.sh && sudo rm -rf new_cred_p.sh updX100p.sh res.sh fix24.04.sh && clear && printf '\e[3J' && echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ && echo + Congratulations! X100 has been successfully installed! + && echo + For starting X100 just type ./X100p.sh and press Enter + && echo + X100 will accelerate strongly during the next sessions + && echo + Many thanks to you for your support! Glory to Ukraine! + && echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

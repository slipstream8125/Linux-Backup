#Updates the packages installed in the system
timedatectl set-local-rtc 1 --adjust-system-clock
sudo apt-get upgrade -y
sudo apt-get install gnome-tweaks conky-all discord librewolf codeblocks codeblocks-contrib  #Installs gnome-tweaks

sudo apt install conky-all -y #Installs conky
sudo apt install neofetch -y #installs neofetch
#Installs discord
sudo apt install discord -y
echo "Do you want to install betterdiscordctl?"
read inp;
if [[ "$inp" == "y" ]]||[[ "$inp" == "Y"]];then
  curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
  chmod +x betterdiscordctl
  sudo  mv betterdiscordctl /usr/local/bin
  sudo betterdiscordctl self-upgrade
  betterdiscordctl -i traditional install
fi
echo "Installing Librewolf : \n"
echo "deb [arch=amd64] http://deb.librewolf.net $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/librewolf.list
sudo wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg
sudo apt update
sudo apt install librewolf -y
flatpak install flathub com.visualstudio.code-oss -y
sudo apt install codeblocks codeblocks-contrib
sudo apt install virtualbox -y
wget http://packages.linuxmint.com/pool/main/w/webapp-manager/webapp-manager_1.1.9_all.deb
sudo apt install ./webapp-manager*.deb
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'
sudo apt update
sudo apt install teams -y
sudo apt install wget -y
wget -O ~/mailspring.deb "https://updates.getmailspring.com/download?platform=linuxDeb"
sudo apt install ~/mailspring*.deb
sudo apt install lutris -y
flatpak install flathub org.onlyoffice.desktopeditors -y
sudo apt install gnome-weather -y
sudo apt install snapd -y
sudo apt install adb -y
sudo snap install wps-2019-snap
sudo snap connect wps-2019-snap:cups-control :cups-control
sudo snap connect wps-2019-snap:alsa :alsa
sudo snap connect wps-2019-snap:pulseaudio :pulseaudio
sudo snap connect wps-2019-snap:removable-media :removable-media
sudo snap install snap-store

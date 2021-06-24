## 7ZIP
sudo apt update && sudo apt upgrade
sudo apt-get update && sudo apt-get install p7zip-full p7zip-rar

## CALIBRE
sudo apt update && sudo apt upgrade
sudo apt install calibre

## COMPOSER
sudo apt update && sudo apt upgrade
sudo apt install composer

## DOCKER
sudo apt update && sudo apt upgrade
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock

## FIREFOX
sudo add-apt-repository ppa:mozillateam/firefox-next
sudo apt update && sudo apt upgrade
sudo apt install firefox

## GIMP
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update && sudo apt upgrade
sudo apt install gimp

## GIT
sudo apt update && sudo apt upgrade
sudo apt install git

## GNOME SCREENSHOT
sudo apt update && sudo apt upgrade
sudo apt-get install gnome-screenshot

## HTOP
sudo apt update && sudo apt upgrade
sudo apt install htop

## JAVA
sudo apt update && sudo apt upgrade
sudo apt install default-jre
sudo apt install default-jdk

## LIBREOFFICE
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update && sudo apt upgrade
sudo apt install libreoffice

## MYSQL
sudo apt update && sudo apt upgrade
sudo apt install mysql-server
sudo mysql_secure_installation
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'secret';
sudo /etc/init.d/mysql restart

## NVM
sudo apt update && sudo apt upgrade
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile

## NPM
sudo apt update && sudo apt upgrade
sudo apt install npm

## ELETRON
sudo apt update && sudo apt upgrade
npm install -g electron

## NODE
sudo apt update && sudo apt upgrade
nvm install --lts
nvm use --lts

## PGSQL DRIVER
sudo apt update && sudo apt upgrade
sudo apt install php7.2-pgsql

## PHP
sudo apt update && sudo apt upgrade
sudo apt install php
sudo apt install php-xml

## POSTGRES
sudo apt update && sudo apt upgrade && sudo apt autoremove 
sudo apt install postgresql postgresql-contrib postgresql-client-common postgresql-client
pg_ctlcluster 12 main start
sudo service postgresql restart
sudo -u postgres psql

## RAR
sudo apt update && sudo apt upgrade
sudo apt install unrar

## TRANSMISSION
sudo apt update && sudo apt upgrade
sudo apt install transmission

## VIM
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update && sudo apt upgrade
sudo apt install vim

## VIRTUAL BOX
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update && sudo apt upgrade
sudo apt-get install virtualbox-5.2

## YOUTUBE-DL
sudo apt update && sudo apt upgrade
sudo apt-get install youtube-dl

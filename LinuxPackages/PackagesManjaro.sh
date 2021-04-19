## CIRCLECI
sudo snap install circleci

## COMPOSER
sudo pacman -Sy composer

## KUBECTL
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl
rm kubectl.sha256

## DIA
sudo pacman -Sy dia

## DEVILSPIE
sudo pacman -S devilspie || sudo pacman -Rs devilspie
mkdir -p ~/.devilspie

echo '
(if (contains (window_class) "Code")
	(begin
		(spawn_async (str "xprop -id " (window_xid) " -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 "))
		(spawn_async (str "xprop -id " (window_xid) " -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xD8000000"))
	)
)
' > ~/.devilspie/vscode_transparent.ds

## DOCKER
sudo pacman -Sy docker
sudo systemctl start docker
sudo chmod 666 /var/run/docker.sock

## FOXIT
wget https://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader.enu.setup.2.4.4.0911.x64.run.tar.gz
tar -xf FoxitReader.enu.setup.2.4.4.0911.x64.run.tar.gz
rm FoxitReader.enu.setup.2.4.4.0911.x64.run.tar.gz
./FoxitReader.enu.setup.2.4.4.0911\(r057d814\).x64.run
rm FoxitReader.enu.setup.2.4.4.0911\(r057d814\).x64.run

## GEOIP CONFIGURATION
sudo pacman-mirrors -g --geoip

## GIT
sudo pacman -Sy git
git config --global user.name "Wesley Flôres"
git config --global user.email wesleyfloresterres@gmail.com
git config credential.helper store

## HTOP
sudo pacman -Sy htop

## LIBREOFFICE
sudo pacman -S libreoffice-fresh libreoffice-fresh-pt-br
trizen -S libreoffice-extension-vero

## LIBREPCB
sudo snap install librepcb

## LOLCAT
sudo pacman -Sy lolcat

## MLOCATE
sudo pacman -Sy mlocate

## MYSQL
sudo pacman -Sy mariadb
rm -Rf /var/lib/mysql/*
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl enable mariadb.service
sudo systemctl start mariadb.service
sudo mysql --user root

## NODE
snap install --edge node
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
snap install --edge node --classic

## P7ZIP
sudo pacman -Sy p7zip

## PHP
sudo pacman -Sy php php-apache php-cgi php-fpm php-gd php-embed php-intl php-imap php-redis php-snmp php-pgsql

## XDEBUG (PHP EXTENSION)
sudo pacman -Sy xdebug
# UNCOMMENT CONTENT FILE IN: /etc/php/conf.d/xdebug.ini
php -r "var_dump(extension_loaded('xdebug'));"

## POSTGRES
sudo pacman -Sy postgresql postgis python-psycopg2 libpqxx
sudo mkdir -m 0700 -p '/var/lib/postgres/data'
sudo chown postgres '/var/lib/postgres/data'
sudo -i -u postgres
initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data/'
exit
systemctl enable postgresql.service
systemctl start postgresql.service
systemctl status postgresql.service

## PGADMIN4
sudo pacman -Sy pgadmin4
sudo -i -u postgres
psql
ALTER USER postgres WITH PASSWORD 'postgres';

## QBITTORRENT
sudo pacman -Sy qbittorrent

## TMUX
sudo pacman -Sy tmux

## TRIZEN
sudo pacman -Sy trizen

## UNRAR
sudo pacman -Sy unrar

## VIRTUAL BOX
sudo pacman -S linux$(uname -r | cut -c 1,3)-virtualbox-host-modules
sudo /sbin/rcvboxdrv setup

## VISUAL STUDIO CODE
sudo pacman -S base-devel
yay -S visual-studio-code-bin
sudo chown -R $(whoami) /opt/visual-studio-code
sudo chown -R root /opt/visual-studio-code

## YAY
sudo pacman -Su yay		

## YOUTUBE-DL
sudo pacman -Sy youtube-dl

## WORKBENCH
sudo pacman -Sy mysql-workbench

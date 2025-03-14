mkdir finalBoss
cd finalBoss
touch config.sh

sudo apt-get update
sudo apt upgrade

sudo apt install mysql-server
sudo mysql -V

sudo systemctl status mysql
mkdir finalBoss
cd finalBoss
touch config.sh

sudo apt-get update
sudo apt upgrade

sudo apt install mysql-server
sudo mysql -V

sudo systemctl status mysql

cd /var/backups

# creo que le falta un -p al final
sudo mysql -u root 

# ya estamos en mysql
show databases;

# nos movemos a la base de datos de mysql 
use mysql;


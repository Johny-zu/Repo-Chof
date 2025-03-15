# mkdir finalBoss
# cd finalBoss
# touch config.sh

# poner primero chmod +x config.sh
# correr con ./config.sh

sudo apt-get update -y
sudo apt upgrade -y

sudo apt install -y mysql-server 
sudo mysql -V

sudo systemctl status mysql

cd /var/backups

# creo que le falta un -p al final
sudo mysql -u root 

# ya estamos en mysql
show databases;

# nos movemos a la base de datos de mysql 
use mysql;

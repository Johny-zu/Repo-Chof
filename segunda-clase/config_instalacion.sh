# poner primero chmod +x config.sh
# correr con ./config.sh

# primero checamos que tenmos instlaado
mysql --version
mysqldump --version
bash --version

# hacemos las carpetas
mkdir proyectoF
cd proyectoF
touch config.sh

# hacemos los updates de los paquetes
sudo apt-get update -y
sudo apt upgrade -y

# instalamos mysql en caso de ser necesario
sudo apt install -y mysql-server 
sudo mysql -V

# sudo service mysql start
sudo service mysql start
Start-Service MySQL
Get-Service MySQL*

# iniciamos mysql
sudo service mysql start
sudo systemctl status mysql

cd /var/backups

# creo que le falta un -p al final
sudo mysql -u root 

# ya estamos en mysql
show databases;

# nos movemos a la base de datos de mysql 
use mysql;
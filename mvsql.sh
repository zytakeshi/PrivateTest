systemctl stop mysql
cp -Rp /var/lib/mysql /var/lib/mysql.backup
mkdir /mnt/mysql
sudo cp -Rp /var/lib/mysql /mnt/
nano /etc/my.cnf
systemctl start mysql

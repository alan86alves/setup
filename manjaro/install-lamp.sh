
# !/bin/bash
# curl https://gist.githubusercontent.com/alan86alves/287cf404f5df9d6fb2a543c9ef726389/raw/5c6e03cca28c6862125b9dc4c834436847e0b462/install-postgres-9-5.sh | bash

# Install apache
sudo pacman -S apache --noconfirm 

# Enable Apache service to start at boot and restart Apache service using commands:
sudo systemctl enable httpd
sudo systemctl restart httpd
sudo systemctl status httpd

# Install MariaDB
sudo pacman -S mysql

# Initialize the MariaDB data directory prior to starting the service.
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# Enable and start MariaDB service.
sudo systemctl enable mysqld
sudo systemctl start mysqld
sudo systemctl status mysqld

# Install PHP 
sudo pacman -S php php-apache --noconfirm 

# Comment/Uncomment lines configurations 
sudo sed -i '66 s/^/#/' /etc/httpd/conf/httpd.conf
sudo sed -i '67 s/^#*//' /etc/httpd/conf/httpd.conf
sudo sh -c 'echo -e "LoadModule php7_module modules/libphp7.so\nAddHandler php7-script php\nInclude conf/extra/php7_module.conf" >> /etc/httpd/conf/httpd.conf'
sudo systemctl restart httpd

# Install phpMyAdmin
sudo pacman -S phpmyadmin --noconfirm 

# Uncomment lines configurations 
sudo sed -i '887,902 s/^;*//' /etc/php/php.ini
sudo sh -c "echo -e 'Alias /phpmyadmin "/usr/share/webapps/phpMyAdmin"\n <Directory "/usr/share/webapps/phpMyAdmin">\n DirectoryIndex index.php\n AllowOverride All\n Options FollowSymlinks\n Require all granted\n </Directory>\n' >> /etc/httpd/conf/extra/phpmyadmin.conf"
sudo sh -c "echo -e '\nInclude conf/extra/phpmyadmin.conf\n' >> /etc/httpd/conf/httpd.conf"

sudo systemctl restart httpd


#!/bin/bash 

echo "current php version"

php -v

php=$(php -v | head -n 1 | cut -d " " -f 2 | cut -d "." -f 1,2)

if [ "$php" != "" ]; then
    sudo a2dismod php$php
    
    echo "php version to activate: "
    read active

    sudo a2enmod php$active

    sudo update-alternatives --set php /usr/bin/php$active
    sudo systemctl restart apache2

    php -v

else 
	echo "php not installed"
fi
exit 0
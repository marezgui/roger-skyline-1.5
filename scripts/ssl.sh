#!/bin/bash

a2enmod ssl
a2ensite default-ssl
/etc/init.d/apache2 restart

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -sha256 -out /etc/apache2/server.crt -keyout /etc/apache2/server.key

chmod 440 /etc/apache2/server.crt

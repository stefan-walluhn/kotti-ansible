#/bin/sh

sudo apt-get update
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password foobar'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password foobar'
sudo apt-get -qy install python libpython2.7-dev git mysql-server nginx

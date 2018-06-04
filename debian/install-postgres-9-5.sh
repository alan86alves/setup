# !/bin/bash
# curl https://gist.githubusercontent.com/alan86alves/287cf404f5df9d6fb2a543c9ef726389/raw/5c6e03cca28c6862125b9dc4c834436847e0b462/install-postgres-9-5.sh | bash

# Remove older installations
sudo apt-get -y --purge remove $(dpkg -l | grep postgresql | awk '{print $2}' | tr "\n" " ")
sudo rm -rf /var/lib/postgresql/
sudo rm -rf /var/log/postgresql/
sudo rm -rf /etc/postgresql/

# Installing Required Software
sudo apt-get install wget ca-certificates

# Install certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Setup repository
sudo add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main"
sudo apt-get update
 
# Install
sudo apt-get install -y postgresql-9.5 postgresql-contrib-9.5

# Change password for user postgres
sudo -u postgres bash -c "psql -c \"ALTER USER postgres WITH PASSWORD 'postgres';\""

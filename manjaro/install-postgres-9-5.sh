# !/bin/bash
# curl https://gist.githubusercontent.com/alan86alves/287cf404f5df9d6fb2a543c9ef726389/raw/5c6e03cca28c6862125b9dc4c834436847e0b462/install-postgres-9-5.sh | bash

# Install
sudo pacman -Sy --noconfirm postgresql
sudo pacman -Sy --noconfirm pgadmin3

# Change password
sudo passwd postgres

# Switch to the postgres user account and initialize the database cluster:
sudo su postgres -l # or sudo -u postgres -i
initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data/'
exit

# Now, start and enable the postgresql.service:
sudo systemctl enable --now postgresql.service

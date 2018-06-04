#!/bin/bash
# ref: http://www.manjaro-linux.com.br/forum/viewtopic.php?f=15&t=1895

# https://wiki.archlinux.org/index.php/IBus
sudo pacman -S ibus

# increment GTK
echo 'GTK_IM_MODULE=cedilla' | sudo tee --append /etc/enviroment

# reboot system 
sudo reboot

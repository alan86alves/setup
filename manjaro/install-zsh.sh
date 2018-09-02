# !/bin/bash
# curl https://gist.githubusercontent.com/alan86alves/287cf404f5df9d6fb2a543c9ef726389/raw/5c6e03cca28c6862125b9dc4c834436847e0b462/install-postgres-9-5.sh | bash

# Install Zsh
sudo pacman -S zsh

# Change shell default to zsh
sudo usermod -s /bin/zsh $USER

# Install oh-my-zsh
sudo curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Install theme dracula
git clone https://github.com/dracula/zsh.git && ln zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme


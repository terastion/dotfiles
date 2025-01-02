#!/bin/bash
REPODIR=$(realpath .)

# confirm that this will override existing dots
while true; do
    read -p "This will erase existing dotfiles. Do you want to continue? " yn
    case $yn in
        *[Yy] ) break;;
        *[Nn] ) exit;;
        * ) echo "Please answer yes (y) or no (n).";;
    esac
done

# prompt for user coordinates
read -p "Specify your coordinates for redshift (format latitude:longitude): " coords

# start symlinking dotfiles in proper places
echo "Symlinking dotfiles..."
ln -sf $(realpath .vimrc) $HOME/.vimrc
ln -sf $(realpath .xprofile) $HOME/.xprofile
ln -sf $(realpath .Xresources) $HOME/.Xresources
ln -sf $(realpath .zshrc) $HOME/.zshrc
ln -sf $(realpath .themes) $HOME/.themes
ln -sf $(realpath synthwave.jpg) $HOME/synthwave.jpg
ln -sf $(realpath .gtkrc-2.0) $HOME/.gtkrc-2.0
mkdir $HOME/.config
ln -sf $(realpath bottom) $HOME/.config/bottom
ln -sf $(realpath dunst) $HOME/.config/dunst
ln -sf $(realpath gtk-3.0) $HOME/.config/gtk-3.0
sed "s/COORDSHERE/$(coords)" i3/config
ln -sf $(realpath i3) $HOME/.config/i3
ln -sf $(realpath picom) $HOME/.config/picom
ln -sf $(realpath polybar) $HOME/.config/polybar
ln -sf $(realpath rofi) $HOME/.config/rofi
echo "Dotfiles copied!"

# install packages needed for dotfiles
if [ ! -e /usr/bin/yay ]; then
    echo "yay has not been installed. Installing now..."
    cd $HOME
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd $REPODIR
fi
yay -S $(<packages.txt)

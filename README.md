# Arch Linux dotfiles

## Overview

![Screenshot](./screenshot.png)

* **Display manager:** sddm
* **Window manager:** sway
* **Locker:** swaylock
* **Terminal emulator:** alacritty
* **Shell:** zsh
* **Bar:** waybar
* **Launcher:** wofi
* **Text editor:** vim (**TODO:** switch to neovim)

## Dependencies

```
pacman -Sy alacritty vim sddm
```

## SDDM display manager

**Theme:** [Terminal style login](https://www.github.com/GistOfSpirit/TerminalStyleLogin)

1. Extract the compressed theme file to `/usr/share/sddm/themes/`.
2. In case you do not already have a sddm config file copy `/usr/lib/sddm/sddm.conf.d/default.conf` to `/etc/sddm.conf/file-name.conf`.
3. Edit the current theme setting in the sddm config file to the theme folder name.

```
[Theme]
Current=TerminalStyleLogin
```

## Waybar

[source](https://github.com/ziap/dotfiles/tree/master)

## ZSH

[source](https://github.com/hgaiser/gruvbox-zsh)

## VIM 

Install vim-plug.

```
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged &&
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

When you open vim for the first time use the `:PlugInstall` command to install all your plugins from your `.vimrc` file.

For more information follow this guide: [vimrc configuration guide](https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/).

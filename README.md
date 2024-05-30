# Arch Linux dotfiles

## SDDM display manager

**Theme:** [Terminal style login](https://www.github.com/GistOfSpirit/TerminalStyleLogin)

1. Extract the compressed theme file to `/usr/share/sddm/themes/`.
2. In case you do not already have a sddm config file copy `/usr/lib/sddm/sddm.conf.d/default.conf` to `/etc/sddm.conf/file-name.conf`.
3. Edit the current theme setting in the sddm config file to the theme folder name.

```
[Theme]
Current=TerminalStyleLogin
```

## VIM text editor

Run the these commands to setup vim and instal `vim-plug`.

```
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged &&
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Copy the `.vimrc` file to your home directory. Or create your own vimrc file.
When you open vim for the first time use th `:PlugInstall` command to install all your plugins from your `.vimrc` file.

- [Vimrc configuration guide](https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/)

# Dotfiles and other config to simplify workstation config

oh-my-zsh:
```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s /usr/share/zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/plugins
ln -s /usr/share/zsh/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/plugins
```

lucius vim theme (after vim-dein did its first run):
```
mkdir ~/.vim/colors
ln -s ~/.cache/dein/repos/github.com/jonathanfilip/vim-lucius/colors/lucius.vim .vim/colors/
```

## Turn off pc beeping
```
# echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
```

## Make it possible to launch terminal apps from the "Launch with ..." menus

This is a hack around GNOME, which tries to look up known terminals when
launching a terminal application.

```
ln -s /usr/bin/alacritty /usr/bin/xterm
```


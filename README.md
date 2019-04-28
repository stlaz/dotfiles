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

i3-lock custom script
```
ln -s config/i3lock/i3lock-custom.sh /usr/bin/i3lock-custom
```

![screenshot](./screenshot.png)
![screenshot2](./screenshot2.png)

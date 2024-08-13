# Using this repo

Install chezmoi. Then
```
chezmoi init --ssh stlaz/dotfiles
chezmoi diff         # to check changes to your configs
chezmoi apply -v     # to apply the changes from above
chezmoi merge <FILE> # in case you want to alter some of the changes
```

More on chezmoi usage at https://www.chezmoi.io

## Installing system-managed zsh plugins to oh-my-zsh

oh-my-zsh:
```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s /usr/share/zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/plugins
ln -s /usr/share/zsh/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/plugins
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

## Sharing screen in Wayland (Arch)

Install the `xdg-desktop-portal` and `xdg-desktop-portal-impl` packages. Choose
the desktop portal implementation matching your window manager.

Install `slurp` to be able to pick window/screen to share.

## Mirroring a screen for presentations

```
# check available outputs
swaymsg -t get_outputs
# mirror an output to the current screen, start in full screen
wl-mirror -F -s c <output name>
```

## Unlock gnome-keyring after login

User password must match the gnome-keyring password. After that, follow
https://wiki.archlinux.org/title/GNOME/Keyring#PAM_step.

`seahorse` is useful to access the gnome-keyring contents.

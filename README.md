# How-to

## Basic setuo
1. copy all files to your home directory

packages:

``ranger aria2 polybar rofi fontawesome-fonts ffmpeg mpv pipewire-pulseaudio
pulseaudio-utils neovim xiccd colord fd maim xclip proxychains dunst ccls wine
lutris libX11-devel libXft-devel libXinerama-devel``

from opi:
``jamesdsp microsoft-edge compleat``

wifi driver for archlinux
``
git clone https://aur.archlinux.org/rtl88x2bu-dkms-git.git
cd rtl88x2bu-dkms-git
makepkg -si
``

## other useful links 
paq.nvim

``
git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim
``

rustup `` curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh ``
rust-analyzer ``https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary``

Kotatogram https://kotatogram.github.io/download/

moar (less analog with bitches and blackjack) https://github.com/walles/moar

## themes
- wallpaper - clouds.jpg
- gtk and icon theme: https://github.com/mountain-theme/Mountain
- font gohu: https://font.gohu.org/

## zsh setup

first of all, install omz and custom plugins:

``
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
``

and after this you can copy .zshrc into home

## Multimonitor setup
1. copy 10-monitor.conf to /etc/X11/xorg.conf.d if you need need to
2. ``systemctl --user enable trojan``
3. ``systemctl --user enable monitor-setup``

### color correction
i dont remember what i used in this setup for colorcorrection, but i suppose it
was colord.

- just follow this steps
https://wiki.archlinux.org/title/ICC_profiles#xiccd

also, i had an issue with ``systemctl enable colord``, here's fix

in /usr/lib/systemd/system/colord.service put these lines at the end:

``
[Install]
WantedBy=graphical.target
``

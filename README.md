# My lovely dotfiles for various machines

## Laptops

### Deli
---
#### Features
- Hyprland
    - Hypridle
    - Hyprpaper
    - Hyprlock
    - Hyprpicker
- Waybar
    - Config derived from https://github.com/sejjy/mechabar
- Libreoffice

#### Setup
``` bash
git clone https://github.com/thatonekorean/Dotfiles.git ~/Dotfiles
cp -r ~/Dotfiles/laptops/deli/.config/* ~/.config/
~/Dotfiles/laptops/deli/scripts/install_deps.sh
```
- Edit `/etc/greetd/config.toml`
    - Replace `command = "agreety --cmd /bin/sh"` with `command = "Hyprland -c /etc/nwg-hello/hyprland.conf"`
- Reboot

#### TODO
- Keybinds
- Libreoffice alternative
	- Microsoft Office in winapps?
- Fully reconfigure waybar
    - Use pywal for colors

### Hades
---
## Desktops

### Zues
---
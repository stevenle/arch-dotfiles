#!/bin/sh

set -e

# Install i3-gaps.
sudo pacman -S \
  dmenu \
  i3-gaps \
  i3status \
  redshift \
  xorg \
  xorg-xinit \
  xorg-server \
cat > $HOME/.xinitrc <<EOF
#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I\$HOME ~/.Xresources
exec i3
EOF

# Install polybar.
yaourt -S polybar

echo <<EOF

polybar installed

add the following env vars to /etc/profile:

  DEFAULT_MONITOR
  ADAPTER_ETHERNET
  ADAPTER_WIRELESS

list monitors:
  xrandr -q | grep " connected" | cut -d ' ' -f1

list network adapters:
  ip link
EOF

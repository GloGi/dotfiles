#!/bin/sh
if [-d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" && . "$f"
  done
  unset f
fi
# Disable caps lock effect
setxkbmap -option caps:none
export PATH=/home/tuutti/bin:/home/tuutti/scripts:$PATH:/home/tuutti/.gem/ruby/2.1.0/bin:/home/tuutti/.gem/ruby/2.2.0/bin
export XDG_CONFIG_HOME="/home/tuutti/.config"
export EDITOR=vim
export BROWSER=firefox

setxkbmap -layout fi

xrdb ~/.Xresources

#compton --config ~/.compton.conf -b --xrender-sync --xrender-sync-fence &

if [ "$(hostname)" = "pad" ] || [ "$(hostname)" = "järkäle" ]; then
  exec ~/scripts/touchpad.sh &
  # Set backgrounds.
  #feh -bg-max ~/dotfiles/resources/singlecolorbg.png

  exec i3
else
  exec ~/scripts/update-public-ip.sh 1>&- 2>&- &

  # Set backgrounds.
  feh --bg-max ~/dotfiles/resources/bg2.jpg --bg-max ~/dotfiles/resources/bg.jpg
  exec i3
fi

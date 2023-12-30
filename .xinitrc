#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then xrdb -merge $sysresources; fi
if [ -f $sysmodmap ]; then xmodmap $sysmodmap; fi
if [ -f "$userresources" ]; then xrdb -merge "$userresources"; fi
if [ -f "$usermodmap" ]; then xmodmap "$usermodmap"; fi

# Vietnamese input method
export GTK_IM_MODULE=fcitx \
QT_IM_MODULE=fcitx \
XMODIFIERS=@im=fcitx \
SDL_IM_MODULE=fcitx \
fcitx &

# keymaps WM
sxhkd &
# fix shadows in windows
picom --config /home/vnc1106/.config/picom/picom.conf &
# set background
feh --bg-fill ~/.config/wallpapers/arch1.jpg
# status bar
polybar &
# fix cursor `x`
xsetroot -cursor_name left_ptr &
# run WM
exec bspwm

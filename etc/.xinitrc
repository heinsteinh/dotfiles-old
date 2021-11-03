#!/bin/bash
#           ██          ██               
#          ░░          ░░                
#   ██   ██ ██ ███████  ██ ██████  █████ 
#  ░░██ ██ ░██░░██░░░██░██░░██░░█ ██░░░██
#   ░░███  ░██ ░██  ░██░██ ░██ ░ ░██  ░░ 
#    ██░██ ░██ ░██  ░██░██ ░██   ░██   ██
#   ██ ░░██░██ ███  ░██░██░███   ░░█████ 
#  ░░   ░░ ░░ ░░░   ░░ ░░ ░░░     ░░░░░  




# Dbus fix
#if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
#    eval "$(dbus-launch --sh-syntax --exit-with-session)"
#fi



# This deals with dbus, etc.
 if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
      [ -x "$f" ] && . "$f"

   done
   unset f
 fi



#█▓▒░ add font paths
#xset +fp /usr/share/fonts/artwiz-latin1-fonts
xset +fp /usr/share/fonts
xset +fp ~/.local/share/fonts
xset +fp ~/.fonts
xset +fp /usr/share/fonts/local
xset  fp rehash



#█▓▒░ keyboard distribution
setxkbmap de
#xrandr --dpi 138



# Set wallpaper
feh --randomize --bg-scale ~/.wallpapers/* &

# Start our conkies
#conky -c ~/.config/conky/inspirationalquote &
#conky -c ~/.config/conky/Filesystems &
#conky -c ~/.config/conky/SystemInfo &


#█▓▒░ personal
#compton --config ~/.compton.conf -cGb &
#xsetroot -cursor_name left_ptr &
#/usr/bin/xdg-user-dirs-update


xrdb -merge .Xresources
xcompmgr &


# Start a D-Bus session
source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID


nm-applet &
seafile-applet &
udiskie &



# Start my terminals
urxvt &
urxvt -e zsh  &
urxvt -e htop  &
# Programs
urxvt -name mutt -e mutt  &
urxvt -name mocp -e nload  &


#dunst &
#sxhkd &


# Set up an icon tray
#stalonetray &

## start window manager


##█▓▒░ select WM
#pulseaudio --start
#sxhkd &
#sxhkd -c '~/.config/sxhkd/sxhkdrc' &
#exec bspwm &>~/bspwm.log
#exec bspwm
#exec i3  &>~/i3.log
#exec awesome  &>~/awesome.log
exec xmonad  &>~/xmonad.log



#pulseaudio --start
#exec dwm  &>~/dwm.log


# start herbstluftwm in locked mode (it will be unlocked at the end of your
# autostart)

#tint2
#
#exec start-pulseaudio-x11 &
#pulseaudio --start
#exec wm
#sxhkd -c $HOME/.config/sxhkd/herbstluftwm &
#exec herbstluftwm --locked
#exec herbstluftwm  --locked &>~/herbstluft.log

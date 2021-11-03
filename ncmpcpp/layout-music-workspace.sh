#!/bin/bash


#sh ~/.config/mopidy/scripts/start.sh

#gnome-terminal --hide-menubar   -e ' ncmpcpp -s playlist        -c "~/.ncmpcpp/lyrics.conf"' &

gnome-terminal   --hide-menubar  -e ' ncmpcpp -s playlist        -c "~/.ncmpcpp/playlist.conf"' &
#gnome-terminal   --hide-menubar  -e ' ncmpcpp -s playlist_editor -c "~/.ncmpcpp/browser.conf"' &
gnome-terminal   --hide-menubar  -e ' ncmpcpp -s lyrics        -c "~/.ncmpcpp/lyrics.conf"' &
#urxvt -name lyrics     -e ncmpcpp -s playlist        -c "~/.ncmpcpp/lyrics.conf"  &
gnome-terminal   --hide-menubar  -e ' ncmpcpp -s clock           -c "~/.ncmpcpp/clock.conf"' &
gnome-terminal   --hide-menubar  -e ' ncmpcpp -s visualizer      -c "~/.ncmpcpp/visualizer.conf"' &


#xfce4-terminal  --hide-borders --hide-toolbar --hide-menubar  -e ' ncmpcpp -s playlist        -c "~/.ncmpcpp/playlist.conf"' &
#xfce4-terminal  --hide-borders --hide-toolbar --hide-menubar  -e ' ncmpcpp -s playlist_editor -c "~/.ncmpcpp/browser.conf"' &
#xfce4-terminal  --hide-borders --hide-toolbar --hide-menubar  -e ' ncmpcpp -s playlist        -c "~/.ncmpcpp/lyrics.conf"' &
#xfce4-terminal  --hide-borders --hide-toolbar --hide-menubar  -e ' ncmpcpp -s clock           -c "~/.ncmpcpp/clock.conf"' &
#xfce4-terminal  --hide-borders --hide-toolbar --hide-menubar  -e ' ncmpcpp -s visualizer      -c "~/.ncmpcpp/visualizer.conf"' &


#urxvt -name playlist   -e ncmpcpp -s playlist        -c "~/.ncmpcpp/playlist.conf" &
#urxvt -name browser    -e ncmpcpp -s playlist_editor -c "~/.ncmpcpp/browser.conf" &
#urxvt -name lyrics     -e ncmpcpp -s playlist        -c "~/.ncmpcpp/lyrics.conf"  &
#urxvt -name clock      -e ncmpcpp -s clock           -c "~/.ncmpcpp/clock.conf"  &
#urxvt -name visualizer -e ncmpcpp -s visualizer      -c "~/.ncmpcpp/visualizer.conf"  &


#xterm -name "playlist"   -e  ncmpcpp -s playlist -c "~/.ncmpcpp/playlist.conf" &
#xterm -name "browser"    -e  ncmpcpp -s playlist_editor -c "~/.ncmpcpp/browser.conf" &
#xterm -name "lyrics"     -e  ncmpcpp -s playlist -c "~/.ncmpcpp/lyrics.conf"  &
#xterm -name "clock"      -e  ncmpcpp -s clock -c "~/.ncmpcpp/clock.conf"  &
#xterm -name "visualizer" -e  ncmpcpp -s visualizer -c "~/.ncmpcpp/visualizer.conf"  &


#termite -t "playlist" -e \
#	'ncmpcpp -s playlist -c "~/.ncmpcpp/playlist.conf"' &
#termite -t "browser" -e \
#	'ncmpcpp -s playlist_editor -c "~/.ncmpcpp/browser.conf"' &
#termite -t "lyrics" -e \
#	'ncmpcpp -s playlist -c "~/.ncmpcpp/lyrics.conf"' &
#termite -t "clock" -e \
#	'ncmpcpp -s clock -c "~/.ncmpcpp/clock.conf"'  &
#termite -t "visualizer" -e \
#	'ncmpcpp -s visualizer -c "~/.ncmpcpp/visualizer.conf"'  &



sleep 3
xdotool key --window $(xdotool search --classname lyrics) l


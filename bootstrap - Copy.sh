#!/usr/bin/env bash

set -e


DOTFILES=$HOME/Seafile/Dotfiles

function link {
    ln -sf $DOTFILES/$1 ~/$2
}


function parse_ostype {
    case "$OSTYPE" in
        solaris*) echo "solaris" ;;
        darwin*)  echo "osx" ;;
        linux*)   echo "linux" ;;
        cygwin*)  echo "cygwin" ;;
        *)        echo "unknown" ;;
    esac
}


# Get current dir (so run this script from anywhere)

#export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"
     BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

EXTRA_DIR="$HOME/.extra"



export DOTFILES_DIR EXTRA_DIR
# Update dotfiles itself first
#[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

PLATFORM=$(parse_ostype)

# Bunch of symlinks
dir=${DOTFILES_DIR}                    # dotfiles directory


#remove any symlink if exist
rm -rf ${HOME}/.bin
rm -rf ${HOME}/.vim
rm -rf ${HOME}/.zsh
rm -rf ${HOME}/.oh-my-zsh
rm -rf ${HOME}/.tmux
rm -rf ${HOME}/.xcolors
rm -rf ${HOME}/.mutt
rm -rf ${HOME}/.newsbeuter
rm -rf ${HOME}/.newsboat
rm -rf ${HOME}/.irssi
rm -rf ${HOME}/.ncmpcpp
rm -rf ${HOME}/.mpd
rm -rf ${HOME}/.xresources.d
rm -rf ${HOME}/.emacs.d
rm -rf ${HOME}/.nano
rm -rf ${HOME}/.xbm
rm -rf ${HOME}/.bash
rm -rf ${HOME}/.icons
rm -rf ${HOME}/.wallpapers
rm -rf ${HOME}/.weechat
rm -rf ${HOME}/.xmonad
rm -rf ${HOME}/.config/mpv
rm -rf ${HOME}/.config/termite
rm -rf ${HOME}/.config/mopidy
rm -rf ${HOME}/.config/ranger
rm -rf ${HOME}/.config/dunst
rm -rf ${HOME}/.config/tint2
rm -rf ${HOME}/.config/bar
rm -rf ${HOME}/.config/conky
rm -rf ${HOME}/.config/polybar
rm -rf ${HOME}/.config/qutebrowser

rm -rf ${HOME}/.config/zathura
rm -rf ${HOME}/.config/dwm
rm -rf ${HOME}/.config/wmfs
rm -rf ${HOME}/.config/herbstluftwm
rm -rf ${HOME}/.config/i3
rm -rf ${HOME}/.config/awesome

rm -rf ${HOME}/.config/bspwm
rm -rf ${HOME}/.config/sxhkd
rm -rf ${HOME}/.config/gtk-3.0
rm -rf ${HOME}/.config/systemd/user


[[ -d ${DOTFILES_DIR}/bin                  ]] &&  ln -sfv ${DOTFILES_DIR}/bin/                  ${HOME}/.bin
[[ -d ${DOTFILES_DIR}/vim                  ]] &&  ln -sfv ${DOTFILES_DIR}/vim/                  ${HOME}/.vim
[[ -d ${DOTFILES_DIR}/zsh                  ]] &&  ln -sfv ${DOTFILES_DIR}/zsh/                  ${HOME}/.zsh
[[ -d ${DOTFILES_DIR}/zsh/oh-my-zsh        ]] &&  ln -sfv ${DOTFILES_DIR}/zsh/oh-my-zsh         ${HOME}/.oh-my-zsh
[[ -d ${DOTFILES_DIR}/tmux                 ]] &&  ln -sfv ${DOTFILES_DIR}/tmux/                 ${HOME}/.tmux
[[ -d ${DOTFILES_DIR}/xcolors              ]] &&  ln -sfv ${DOTFILES_DIR}/xcolors/              ${HOME}/.xcolors
[[ -d ${DOTFILES_DIR}/mutt                 ]] &&  ln -sfv ${DOTFILES_DIR}/mutt/                 ${HOME}/.mutt
[[ -d ${DOTFILES_DIR}/newsbeuter           ]] &&  ln -sfv ${DOTFILES_DIR}/newsbeuter/           ${HOME}/.newsbeuter
[[ -d ${DOTFILES_DIR}/newsboat             ]] &&  ln -sfv ${DOTFILES_DIR}/newsboat/             ${HOME}/.newsboat
[[ -d ${DOTFILES_DIR}/irssi                ]] &&  ln -sfv ${DOTFILES_DIR}/irssi/                ${HOME}/.irssi
[[ -d ${DOTFILES_DIR}/ncmpcpp              ]] &&  ln -sfv ${DOTFILES_DIR}/ncmpcpp/              ${HOME}/.ncmpcpp
[[ -d ${DOTFILES_DIR}/mpd                  ]] &&  ln -sfv ${DOTFILES_DIR}/mpd/                  ${HOME}/.mpd
[[ -d ${DOTFILES_DIR}/xresources.d         ]] &&  ln -sfv ${DOTFILES_DIR}/xresources.d/         ${HOME}/.xresources.d
[[ -d ${DOTFILES_DIR}/emacs.d              ]] &&  ln -sfv ${DOTFILES_DIR}/emacs.d/              ${HOME}/.emacs.d
[[ -d ${DOTFILES_DIR}/nano                 ]] &&  ln -sfv ${DOTFILES_DIR}/nano/                 ${HOME}/.nano
[[ -d ${DOTFILES_DIR}/bash                 ]] &&  ln -sfv ${DOTFILES_DIR}/bash/                 ${HOME}/.bash

[[ -d ${DOTFILES_DIR}/icons                ]] &&  ln -sfv ${DOTFILES_DIR}/icons/                ${HOME}/.icons
[[ -d ${DOTFILES_DIR}/wallpapers           ]] &&  ln -sfv ${DOTFILES_DIR}/wallpapers/           ${HOME}/.wallpapers
[[ -d ${DOTFILES_DIR}/weechat              ]] &&  ln -sfv ${DOTFILES_DIR}/weechat/              ${HOME}/.weechat
[[ -d ${DOTFILES_DIR}/config/mpv           ]] &&  ln -sfv ${DOTFILES_DIR}/config/mpv            ${HOME}/.config/mpv
[[ -d ${DOTFILES_DIR}/config/termite       ]] &&  ln -sfv ${DOTFILES_DIR}/config/termite        ${HOME}/.config/termite
[[ -d ${DOTFILES_DIR}/config/zathura       ]] &&  ln -sfv ${DOTFILES_DIR}/config/zathura/       ${HOME}/.config/zathura

[[ -d ${DOTFILES_DIR}/config/dwm           ]] &&  ln -sfv ${DOTFILES_DIR}/config/dwm/           ${HOME}/.config/dwm
[[ -d ${DOTFILES_DIR}/config/wmfs          ]] &&  ln -sfv ${DOTFILES_DIR}/config/wmfs/          ${HOME}/.config/wmfs
[[ -d ${DOTFILES_DIR}/config/bspwm         ]] &&  ln -sfv ${DOTFILES_DIR}/config/bspwm/         ${HOME}/.config/bspwm
[[ -d ${DOTFILES_DIR}/config/sxhkd         ]] &&  ln -sfv ${DOTFILES_DIR}/config/sxhkd/         ${HOME}/.config/sxhkd
[[ -d ${DOTFILES_DIR}/config/herbstluftwm  ]] &&  ln -sfv ${DOTFILES_DIR}/config/herbstluftwm/  ${HOME}/.config/herbstluftwm
[[ -d ${DOTFILES_DIR}/config/i3            ]] &&  ln -sfv ${DOTFILES_DIR}/config/i3/            ${HOME}/.config/i3
[[ -d ${DOTFILES_DIR}/config/awesome       ]] &&  ln -sfv ${DOTFILES_DIR}/config/awesome/       ${HOME}/.config/awesome

[[ -d ${DOTFILES_DIR}/config/tint2         ]] &&  ln -sfv ${DOTFILES_DIR}/config/tint2/         ${HOME}/.config/tint2
[[ -d ${DOTFILES_DIR}/config/bar           ]] &&  ln -sfv ${DOTFILES_DIR}/config/bar/           ${HOME}/.config/bar
[[ -d ${DOTFILES_DIR}/config/conky         ]] &&  ln -sfv ${DOTFILES_DIR}/config/conky/         ${HOME}/.config/conky
[[ -d ${DOTFILES_DIR}/config/polybar       ]] &&  ln -sfv ${DOTFILES_DIR}/config/polybar/       ${HOME}/.config/polybar
[[ -d ${DOTFILES_DIR}/config/qutebrowser   ]] &&  ln -sfv ${DOTFILES_DIR}/config/qutebrowser/   ${HOME}/.config/qutebrowser
[[ -d ${DOTFILES_DIR}/config/ranger        ]] &&  ln -sfv ${DOTFILES_DIR}/config/ranger/        ${HOME}/.config/ranger
[[ -d ${DOTFILES_DIR}/config/mopidy        ]] &&  ln -sfv ${DOTFILES_DIR}/config/mopidy/        ${HOME}/.config/mopidy
[[ -d ${DOTFILES_DIR}/config/dunst         ]] &&  ln -sfv ${DOTFILES_DIR}/config/dunst/         ${HOME}/.config/dunst
[[ -d ${DOTFILES_DIR}/config/gtk-3.0       ]] &&  ln -sfv ${DOTFILES_DIR}/config/gtk-3.0/       ${HOME}/.config/gtk-3.0


[[ -d ${DOTFILES_DIR}/config/systemd/user  ]] &&  ln -sfv ${DOTFILES_DIR}/config/systemd/user/  ${HOME}/.config/systemd/user



ln -sfv ${DOTFILES_DIR}/runcom/bash_profile            ${HOME}/.bash_profile
ln -sfv ${DOTFILES_DIR}/runcom/bashrc                 ${HOME}/.bashrc
ln -sfv ${DOTFILES_DIR}/runcom/inputrc                ${HOME}/.inputrc
ln -sfv ${DOTFILES_DIR}/runcom/compton.conf           ${HOME}/.compton.conf

ln -sfv ${DOTFILES_DIR}/runcom/vimrc                  ${HOME}/.vimrc
ln -sfv ${DOTFILES_DIR}/runcom/zsh_profile             ${HOME}/.zsh_profile
ln -sfv ${DOTFILES_DIR}/runcom/zshrc                  ${HOME}/.zshrc
ln -sfv ${DOTFILES_DIR}/runcom/yaourtrc               ${HOME}/.yaourtrc
ln -sfv ${DOTFILES_DIR}/runcom/tmux.conf              ${HOME}/.tmux.conf
ln -sfv ${DOTFILES_DIR}/runcom/Xresources             ${HOME}/.Xresources
ln -sfv ${DOTFILES_DIR}/runcom/Xresources.hidpi       ${HOME}/.Xresources.hidpi
ln -sfv ${DOTFILES_DIR}/runcom/Xresources.lodpi       ${HOME}/.Xresources.lodpi
ln -sfv ${DOTFILES_DIR}/runcom/Xresources.cygwin      ${HOME}/.Xresources.cygwin


ln -sfv ${DOTFILES_DIR}/runcom/xbindkeysrc            ${HOME}/.xbindkeysrc

ln -sfv ${DOTFILES_DIR}/nano/nanorc                   ${HOME}/.nanorc

ln -sfv ${DOTFILES_DIR}/git/.gitconfig                ${HOME}/.gitconfig
ln -sfv ${DOTFILES_DIR}/git/.gitignore_global         ${HOME}/.gitignore_global
#ln -sfv ${DOTFILES_DIR}/config/mopidy/mopidy.conf     ${HOME}/.config/mopidy/mopidy.conf



mkdir  -p  $HOME/.local/share/fonts/TTF
mkdir  -p  $HOME/.local/share/fonts/OTF

echo "cp ${DOTFILES_DIR}/fonts/*.ttf    $HOME/.local/share/fonts/TTF/"
cp ${DOTFILES_DIR}/fonts/*.ttf   $HOME/.local/share/fonts/TTF/
echo "cp ${DOTFILES_DIR}/fonts/*.otf    $HOME/.local/share/fonts/OTF/"
cp ${DOTFILES_DIR}/fonts/*.otf   $HOME/.local/share/fonts/OTF/

# Re-scan fonts
fc-cache -fv



if [ "$PLATFORM" == "osx" ]; then
    echo Platform: $PLATFORM
    echo Dotfiles Dir: ${DOTFILES_DIR}

    if [ -f "$DOTFILES_DIR/install/osx.sh" ]; then
        . "$DOTFILES_DIR/install/osx.sh"
    fi
fi

if [ "$PLATFORM" == "cygwin" ]; then
    echo Platform: $PLATFORM
    echo Dotfiles Dir: ${DOTFILES_DIR}
fi


if [ "$PLATFORM" == "linux" ]; then
    echo Platform: $PLATFORM
    echo Dotfiles Dir: ${DOTFILES_DIR}
fi


# Install extra stuff
if [ -d "$EXTRA_DIR" -a -f "$EXTRA_DIR/install.sh" ]; then
    . "$EXTRA_DIR/install.sh"
fi


echo "Done. dotfiles installed to ${DOTFILES_DIR}"
cd $DOTFILES_DIR

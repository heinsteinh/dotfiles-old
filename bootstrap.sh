#!/usr/bin/env bash

set -e


#DOTFILES=$HOME/Seafile/Dotfiles

function link {
    #ln -sfv $DOTFILES_DIR/$1 ~/$2
    ln -sfv $DOTFILES_DIR/$1 $HOME/$2
}



# Get current dir (so run this script from anywhere)

#export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXTRA_DIR="$HOME/.extra"



echo Dotfiles Dir: ${DOTFILES_DIR}
echo Extra Dir: ${EXTRA_DIR}
echo Base Dir: ${BASE_DIR}


export DOTFILES_DIR EXTRA_DIR

# Update dotfiles itself first
#[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

echo Dotfiles Dir: ${DOTFILES_DIR}
echo Extra Dir: ${EXTRA_DIR}
echo Base Dir: ${BASE_DIR}


# Bunch of symlinks
dir=${DOTFILES_DIR}                    # dotfiles directory

#remove any symlink if exist

rm -rf ${HOME}/.bash_profile
rm -rf ${HOME}/.bashrc
rm -rf ${HOME}/.zsh_profile
rm -rf ${HOME}/.zshrc
rm -rf ${HOME}/.config/alacritty.yml

rm -rf ${HOME}/.vim
rm -rf ${HOME}/.zsh
rm -rf ${HOME}/.tmux
rm -rf ${HOME}/.emacs.d



[[ -d ${DOTFILES_DIR}/vimConf           ]] &&  link  vimConf/vim             .vim
[[ -d ${DOTFILES_DIR}/tmuxConf          ]] &&  link  tmuxConf/tmux           .tmux
[[ -d ${DOTFILES_DIR}/emacsConf         ]] &&  link  emacsConf/emacs         .emacs.d
[[ -d ${DOTFILES_DIR}/zshConf           ]] &&  link  zshConf                 .zsh



link vimConf/vimrc                      .vimrc
link tmuxConf/tmux.conf                 .tmux.conf
link bashConf/bash_profile              .bash_profile
link bashConf/bashrc                    .bashrc

link zshConf/zsh_profile                .zsh_profile
link zshConf/zshrc                      .zshrc

link alacrittyConf/alacritty.yml        .config/alacritty.yml


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

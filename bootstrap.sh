#!/usr/bin/env bash

set -e


#DOTFILES=$HOME/Seafile/Dotfiles

function link {
    ln -sf $DOTFILES/$1 ~/$2
}



# Get current dir (so run this script from anywhere)

#export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"
     BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

EXTRA_DIR="$HOME/.extra"



export DOTFILES_DIR EXTRA_DIR
# Update dotfiles itself first
#[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master


# Bunch of symlinks
dir=${DOTFILES_DIR}                    # dotfiles directory
echo $DOTFILES_DIR

#remove any symlink if exist

rm -rf ${HOME}/.vim
[[ -d ${DOTFILES_DIR}/vimConf                  ]] &&  ln -sfv ${DOTFILES_DIR}/vimConf/vim               ${HOME}/.vim


rm -rf ${HOME}/.tmux
[[ -d ${DOTFILES_DIR}/tmuxConf                 ]] &&  ln -sfv ${DOTFILES_DIR}/tmuxConf/tmux             ${HOME}/.tmux


#rm -rf ${HOME}/.emacs.d
#[[ -d ${DOTFILES_DIR}/emacsConf                ]] &&  ln -sfv ${DOTFILES_DIR}/emacsConf/emacs            ${HOME}/.emacs.d


ln -sfv ${DOTFILES_DIR}/vimConf/vimrc                ${HOME}/.vimrc
ln -sfv ${DOTFILES_DIR}/tmuxConf/tmux.conf           ${HOME}/.tmux.conf


ln -sfv ${DOTFILES_DIR}/bashConf/bash_profile           ${HOME}/.bash_profile
ln -sfv ${DOTFILES_DIR}/bashConf/bashrc                 ${HOME}/.bashrc

ln -sfv ${DOTFILES_DIR}/zshConf/zsh_profile           ${HOME}/.zsh_profile
ln -sfv ${DOTFILES_DIR}/zshConf/zshrc                 ${HOME}/.zshrc


#ln -sfv ${DOTFILES_DIR}/runcom/inputrc                ${HOME}/.inputrc
#ln -sfv ${DOTFILES_DIR}/runcom/compton.conf           ${HOME}/.compton.conf


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

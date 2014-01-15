# bootstrap.sh borrowed from Janus - https://github.com/carlhuda/janus

function die()
{
    echo "${@}"
    exit 1
}

# Add <strong>.old</strong> to any existing Vim file in the home directory
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do
  if [ -e $i ] || [ -h $i ]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done

# Clone vimfiles into .vim
#git clone https://github.com/vits/vimfiles.git $HOME/.vim \
#  || die "Could not clone the repository to ${HOME}/.vim"

# Clone vundle
#git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle \
#  || die "Could not clone vundle to ${HOME}/.vim/bundle/vundle"

# Create symlinks
ln -s ~/.vim/vimrc ~/.vimrc || die "Could not create symlink ${HOME}/.vimrc"
ln -s ~/.vim/gvimrc ~/.gvimrc || die "Could not create symlink ${HOME}/.gvimrc"

# Make dirs
mkdir ~/.vim/tmp || die "Could not create dir ${HOME}/.vim/tmp"

echo "To finish installation open Vim and run command :BundleInstall"

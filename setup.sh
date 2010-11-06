if [ ! -h ~/.vimrc ]; then
  if [ -f ~/.vimrc ]; then
    # There is already a real .vimrc
    echo "Please remove existing .vimrc file"
    exit
  else
    # No .vimrc so create a link
    ln -s ~/.vim/vimrc ~/.vimrc
  fi
fi

git submodule update --init

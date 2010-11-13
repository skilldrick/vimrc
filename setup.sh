if [[ $OS == Windows* ]]; then
  PROFILE_DIR=`cygpath -d "$USERPROFILE"`
  PROFILE_DIR=`cygpath -u $PROFILE_DIR`
  cp "$PROFILE_DIR/vimfiles/vimrc" "$PROFILE_DIR/_vimrc"
else
  SOURCE=~/.vim/vimrc
  DEST=~/.vimrc
  if [ ! -h $DEST ]; then
    if [ -f $DEST ]; then
      # There is already a real .vimrc
      echo "Please remove existing .vimrc file"
      exit
    else
      # No .vimrc so create a link
      ln -s $SOURCE $DEST
    fi
  fi
fi
git submodule update --init

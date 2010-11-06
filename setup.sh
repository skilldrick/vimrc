# Check to see if there is a non-link .vimrc
[ -f ~/.vimrc ] && echo "Please remove existing .vimrc file" && exit
# If there is no .vimrc make a link
[ -h ~/.vimrc ] || ln -s ~/.vim/vimrc ~/.vimrc
git submodule update --init

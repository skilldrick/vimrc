vimrc
=====

To use, clone into `~/.vim`. `cd` to `~/.vim` and run `./setup.sh` to make link to `.vimrc` in `~/`:

    cd ~/
    git clone git@github.com:skilldrick/vimrc.git .vim
    cd .vim
    ./setup.sh
    

In Windows, assuming Cygwin, clone into `$USERPROFILE/vimfiles` and run `./setup.sh` to make link to _vimrc:

    cd "$USERPROFILE"
    git clone git@github.com:skilldrick/vimrc.git vimfiles
    cd vimfiles
    ./setup.sh

Please note that this vimrc will only work with a Windows installation of gvim, not a Cygwin installation.

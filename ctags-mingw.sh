#!/bin/bash
if [ -d "~/.vim/tags" ]; then
rm -r ~/.vim/tags
fi
mkdir ~/.vim/tags
cd ~/.vim/tags
ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f mingw64 /usr/i686-w64-mingw32/sys-root/mingw/include 


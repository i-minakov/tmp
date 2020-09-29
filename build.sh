#!/bin/zsh

cmake . -Bbuild -Wdev -Werror=dev && cmake --build ./build

touch utag.sh

echo "declare -i positon=0" >> utag.sh
echo "for i in \$@" >> utag.sh
echo "do" >> utag.sh
echo "if [[ \$i != /* ]];" >> utag.sh
echo "then set -- \${@:1:\$positon} "\${PWD}/\$i" \${@:\$positon + 2};" >> utag.sh
echo "fi" >> utag.sh
echo "positon+=1" >> utag.sh
echo "done" >> utag.sh
echo "cd ${PWD}/build/app" >> utag.sh
echo "./utag \$@" >> utag.sh
chmod 777 utag.sh

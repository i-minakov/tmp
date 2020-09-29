export PKG_CONFIG_PATH="-L~/.brew/Cellar/qt/5.15.1/lib/pkgconfig"
export CMAKE_PREFIX_PATH="~/.brew/Cellar/qt/5.15.1//lib/cmake:$CMAKE_PREFIX_PATH"
cmake . -Bbuild -Wdev -Werror=dev && cmake --build ./build

touch utag.sh

echo "declare -i positon=0" >> utag.sh
echo "for i in \$@" >> utag.sh
echo "do" >> utag.sh
echo "set -- \${@:1:\$positon} "\${PWD}/\$i" \${@:\$positon + 2}" >> utag.sh
echo "positon+=1" >> utag.sh
echo "done" >> utag.sh
echo "cd ${PWD}/build/app" >> utag.sh
echo "./utag \$@" >> utag.sh
chmod 777 utag.sh

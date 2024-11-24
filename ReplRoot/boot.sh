rm -rf message.js README.md
if [ -d "./sys" ] 
then
./dist/proot -S . /bin/bash
else
echo "###############################"
echo "## ReplRoot :: By Ekuzika    ##"
echo "###############################"
echo ":: Downloading Debian ::"
sleep 2s
clear
wget -O akuh.zip https://media.githubusercontent.com/media/akuhnet/wqemu/master/akuh.zip
clear
echo "###############################"
echo "## ReplRoot :: By Ekuzika    ##"
echo "###############################"
echo ":: Installing Debian ::"
unzip akuh.zip
unzip root.zip
echo ":: Setting up Debian ::"
tar -xvf root.tar.xz
rm -rf akuh.zip root.zip root.tar.xz
clear
echo "-: Welcome to ReplRoot (Debian)! :-"
./dist/proot -S . /bin/bash
fi
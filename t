
echo "PREPARING INIT"
pkg install -y ncurses-utils ncurses git >> ~/.termux.log 2>&1
git clone https://github.com/vozdev/termux-setup.git >> ~/.termux.log 2>&1
cd termux-setup
./termux-setup full




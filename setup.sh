rm -f ~/.zshrc
rm -f ~/.vimrc
rm -f ~/.gitconfig
rm -f ~/.zprofile
rm -rf ~/.config/nvim

cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig
cp .zprofile ~/.zprofile
cp -r .config/nvim ~/.config/

source ~/.zshrc

rm -f ~/.zshrc
rm -f ~/.vimrc
rm -f ~/.gitconfig
rm -f ~/.zprofile
rm -rf ~/.config/nvim
rm -rf ~/.vim
rm -f ~/.ideavimrc
rm -f ~/.condarc
rm -f ~/.alacritty.toml

cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig
cp .zprofile ~/.zprofile
cp -r .config/nvim ~/.config/
cp -r .vim ~/
cp .ideavimrc ~/.ideavimrc
cp .condarc ~/.condarc
cp .alacritty.toml ~/.alacritty.toml

source ~/.zshrc

rm -f ~/.zshrc
rm -f ~/.vimrc
rm -f ~/.gitconfig
rm -f ~/.zprofile
rm -rf ~/.config/nvim
rm -rf ~/.config/karabiner
rm -f ~/.ideavimrc
rm -f ~/.alacritty.toml
rm -f ~/.tmux.conf

cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig
cp .zprofile ~/.zprofile
cp -r .config/nvim ~/.config/
cp -r .config/karabiner ~/.config/
cp .ideavimrc ~/.ideavimrc
cp .alacritty.toml ~/.alacritty.toml
cp .tmux.conf ~/.tmux.conf

source ~/.zshrc

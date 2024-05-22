rm -f .zshrc
rm -f .zprofile
rm -f .vimrc
rm -f .gitconfig
rm -rf .config/nvim
rm -f .ideavimrc
rm -f .condarc
rm -rf .vim
rm -f .alacritty.toml
rm -r .tmux.conf

cp ~/.zshrc .zshrc
cp ~/.zprofile .zprofile
cp ~/.vimrc .vimrc
cp ~/.gitconfig .gitconfig
cp -r ~/.config/nvim .config/
cp ~/.ideavimrc .ideavimrc
cp ~/.condarc .condarc
cp -r ~/.vim .vim
cp ~/.alacritty.toml .alacritty.toml
cp ~/.tmux.conf .tmux.conf

git add .
git commit -m "$(date)"

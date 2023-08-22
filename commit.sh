rm -f .zshrc
rm -f .zprofile
rm -f .vimrc
rm -f .gitconfig
rm -rf .config/nvim

cp ~/.zshrc .zshrc
cp ~/.zprofile .zprofile
cp ~/.vimrc .vimrc
cp ~/.gitconfig .gitconfig
cp -r ~/.config/nvim .config/

git add .
git commit -m "$(date)"

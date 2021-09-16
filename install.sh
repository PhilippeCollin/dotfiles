# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ZPlug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# ZSH
ln -sfn ~/dotfiles/zsh ~/.zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Vim
ln -sfn ~/dotfiles/vim ~/.vim
ln -sf ~/.vim/vimrc ~/.vimrc

# Git
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore_global ~/.gitignore_global


if [ $SPIN ]; then
  sudo apt-get install -y lsof
  sudo apt-get install -y fzf
fi

source ~/.zshrc

zplug install
vim +PlugInstall +qall!
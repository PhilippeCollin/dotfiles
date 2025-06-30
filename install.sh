# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ZPlug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# ZSH
ln -sfn ~/dotfiles/zsh ~/.zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Neovim
ln -sfn ~/dotfiles/nvim ~/.config/nvim

# Vim
ln -sfn ~/dotfiles/vim ~/.vim
ln -sf ~/.vim/vimrc ~/.vimrc
ln -sfn ~/dotfiles/scripts ~/.scripts

# Git
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore_global ~/.gitignore_global

ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

if [ $SPIN ]; then
  sudo apt-get install -y lsof
  sudo apt-get install -y fzf
  sudo apt-get install -y ripgrep
fi

source ~/.zshrc

zplug install

# Cursor dotfiles
git clone https://github.com/shopify/cursor-dotfiles ~/shopify-dotfiles/cursor-dotfiles

chmod +x ~/shopify-dotfiles/cursor-dotfiles/install.sh
~/shopify-dotfiles/cursor-dotfiles/install.sh

chmod +x ~/shopify-dotfiles/cursor-dotfiles/install-extensions.sh
~/shopify-dotfiles/cursor-dotfiles/install-extensions.sh

if which brew >/dev/null 2>&1; then
  brew install fzf ripgrep
fi

npx --yes @shopify/vs-core

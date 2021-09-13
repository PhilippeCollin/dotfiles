sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -sf ~/dotfiles/vimrc ~/.vimrc

if [ $SPIN ]; then
  sudo apt-get install -y lsof
  sudo apt-get install -y fzf
fi
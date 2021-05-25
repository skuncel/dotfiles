# zsh
echo "installing zsh configuration..."
mkdir -p ~/.config/zsh
cat ./.config/zsh/aitareko.zsh > ~/.config/zsh/aitareko.zsh
cat ./.zshrc > ~/.zshrc
echo "done!"

# vscode
echo "installing vscode configuration..."
mkdir -p ~/.config/Code/User
cat ./.config/Code/User/settings.json > ~/.config/Code/User/settings.json
if [ "$(uname)" == "Darwin" ]; then
  ln -sf ~/.config/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json
fi
echo "done!"
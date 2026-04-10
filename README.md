## how to use
- install neovim and tmux with brew if using mac
- init.lua to ~/.config/nvim
- tmux.conf as a hidden file in home directory
- if you have not set the passphrase for git on a keychain you would have trouble installing
```
ssh-add --apple-use-keychain ~/.ssh/id_xxxxxxx

```
- now this current version uses rose-pine for the color scheme. 
```
mkdir -p ~/.local/share/nvim/site/pack/themes/start

cd ~/.local/share/nvim/site/pack/themes/start
git clone https://github.com/rose-pine/neovim rose-pine
```
- open neovim and allow the project to download and install dependencies
- for tree-sitter to properly work, you need tree-sitter CLI
```
brew install trees-sitter-cli
```
- run code

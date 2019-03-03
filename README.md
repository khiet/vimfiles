# dotfiles

### Install vim, tmux, ag, and fzf

```
brew install vim
brew install tmux
brew install the_silver_searcher
brew install fzf
```

### git clone

```
cd; git clone git@github.com:khiet/dotfiles.git
```

### Symlink config files

```
ln -s dotfiles ~/.vim
ln -s dotfiles/_vimrc ~/.vimrc
ln -s dotfiles/_gitconfig ~/.gitconfig
ln -s dotfiles/_bash_profile ~/.bash_profile
ln -s dotfiles/_zshrc ~/.zshrc
ln -s dotfiles/_ctags ~/.ctags
ln -s dotfiles/_tmux.conf ~/.tmux.conf
ln -s dotfiles/_tm_properties ~/.tm_properties
ln -s dotfiles/_hushlogin ~/.hushlogin
ln -s dotfiles/_ignore ~/.ignore
ln -s dotfiles/_prettierrc ~/.prettierrc
```

### Install plugins

```
:PlugInstall
```

### chsh to zsh

```
chsh -s $(which zsh)
```

### Install oh my zsh

```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
```

### Install reattach-to-user-namespace

https://robots.thoughtbot.com/tmux-copy-paste-on-os-x-a-better-future

### Other software

```
brew cask install iterm2
brew cask install kdiff3
brew cask install firefox
brew cask install textmate
brew cask install visual-studio-code
brew cask install skype
brew cask install sequel-pro
brew install ffmpeg
brew install ctags
brew install tldr
brew install youtube-dl
```

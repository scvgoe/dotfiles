# dotfiles

# Usage
To sync your all dotfiles with this repo
```sh
source sync_dotfiles.sh
```

To check 256 color
```sh
perl check.pl
```

To install Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vi test
:VundleInstall
```

Install [macVim](https://github.com/macvim-dev/macvim)

Install [nvm](https://github.com/nvm-sh/nvm)

Install homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install brew packages
```
brew update
brew install tmux reattach-to-user-namespace pyenv gh python
```

Install pyenv
```
pip install pyenv
```

Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

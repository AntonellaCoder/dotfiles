# Setting up a New Macbook M1 apple ARM
# For web development - 2021

#### Install Development tools

* Open the Terminal.app run this command

* ``xcode-select --install``

* If you want to remove this tools, then run ``sudo rm -rf /Library/Developer/CommandLineTools``

#### Check ROSSETA Option (Brew does not support apple ARM yet)

* Open Finder, search the Terminal.app in Applications (not open)

* Right click on Terminal > Get Info > Check Open Using Rosseta

#### Install Brew

* Go to this website: https://brew.sh then copy the link

* Paste in Terminal (the link is like the show below, but maybe it will change)

* ``/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"``

#### Install iTerm2 and wget

* ``brew install iterm2``

* ``brew install wget``

#### Close the Terminal.app
#### In Application right click on iTerm2 and Check ROSSETA Option.
#### Open iTerm (with ROSSETA)

###### While in your home directory, get some of my run commands.

* ``wget https://raw.githubusercontent.com/AntonellaCoder/dotfiles/main/.zshrc``

#### Continue installing packages

* ``brew install git``

* ``brew install vcprompt``

* ``brew install spectacle``

* ``brew install firefox``

* ``brew install visual-studio-code``

#### Autosuggestions & Syntax Highlighting & Autojump & fzf

* ``brew install zsh-autosuggestions``

* ``brew install zsh-syntax-highlighting``

* ``brew install autojump``

* ``brew install fzf``

* Ranger: If you hit Shift + S, it opens a new shell on the current directory.

* If you hit Ctrl + D on the shell, it goes back to ranger. MODIFY your ranger alias in .bashrc or equivalent.

* ``brew install ranger``

* for keybindings follow the instruction in your terminal.

* ``/usr/local/opt/fzf/install`` Yes to all

* Use: type fzf in iterm, CTR + r (bash_history) CTR + t (search_files), to close, use ESC or CTR + c

* While searching, you can select multiple files using TAB

* ``cd **`` to show the options where to cd

* ``ssh **``

#### Install nvm (Nodejs Version Manager) & npm (Node Package Manager)

* The command below was found at https://github.com/nvm-sh/nvm

* ``curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash``

* ``nvm install stable``

#### Close and relaunch iterm & check it versions

* ``nvm --version``

* ``npm --version``

* ``nvm list``

* ``node --version``

#### With this you can install any version (example)

* no not do this, only example ``nvm install 14``

#### Create workdirectory and Install lite-server

* ``mkdir ~/dev``

* ``npm install -g lite-server eslint``

#### Get the Anonimous Pro (install all .ttf's)

* ``wget https://www.marksimonson.com/assets/content/fonts/AnonymousPro-1_002.zip``

* unzip from your finder and install it

#### Visual Studio Code - code.extensions

* Go to ~/dev and got this with the first line, then run the second line to install.

* ``wget https://raw.githubusercontent.com/AntonellaCoder/dotfiles/main/code.extensions``

* ``while read line; do code --install-extension "$line";done < code.extensions``

#### Go to ~/dev open ``code .`` Visual Studio Code - code.settings

* In vscode press Cmd + Shift + P --> Open Settings (JSON) and paste it.

#### Visual Studio Code - code.keybindings

* In vscode press Cmd + Shift + P --> Open Keyboard Shortcuts (JSON) and paste it.

#### Relaunch Visual Studio Code

## SSH & Remote Servers

#### Configuring SSH in your Mac (create public key)

* ``ssh-keygen -t rsa -b 4096``

#### Loging in your Remote Machine

* In your mac, copy your public key

* ``cat ~/.ssh/id_rsa.pub | pbcopy``

* Login in your Remote Machine

* Set correct permission to ssh

* If Synology --> ``sudo chmod 700 your_user_main_directory``

* ``ssh your_user@your_ip_remote -p your_port``

* Paste your public key in the next file

* ``vim ~/.ssh/authorized_keys``

## VIM settings

* Use github junegunn/vim-plug

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* ``mkdir -p ~/.vim/undodir``

* Go to your home directory ``cd ~`` and get my .vimrc

* ``wget https://raw.githubusercontent.com/AntonellaCoder/dotfiles/main/.vimrc-mac``

* rename it ``mv .vimrc-mac .vimrc``

* open .vimrc (no matter if errors, continue) ``vim .vimrc``

* inside .vimrc press ESC and then write ``:source %`` (if error, continues)

* inside .vimrc press ESC and then write ``:PlugInstall``

* when finished quit from both windows ``:q`` ``:q`` then relaunch iterm

* check the effect ``vim .vimrc``

* If errors go to ``vim .vimrc`` and do ``PlugUpdate`` and/or ``PlugUpgrade``

* If error related with (no python), then install vim from homebrew insted of use vim mac version.

# Python & djando for Development

## For Python dev

* To use python3 as default do this:

* Create ``.zprofile``

* Add this to the file ``alias python='python3'``

* Relaunch iTerm

* Now you are ready to rock.

## Pipenv (virtual enviroment)

* ``brew install pipenv``

* check with ``pipenv --version``

* also check the default ``pip --version`` or ``pip3 --version``

## Make pipenv create the virtualenv in the same folder

* ``export PIPENV_VENV_IN_PROJECT="enabled"``

* To remove the option above ``unset PIPENV_VENV_IN_PROJECT``

## Installing django with pipenv

* ``pipenv install django``

* To activate the virtual environment ``pipenv shell``

* To see what's inside the virtual environment ``pip freeze``

* If chargion previous project, install dependencies ``pipenv install --dev``

## If want specific version of python, you must have install that version.

* Opcional --> With specific versions ``pipenv install django==3.0.4 --python python3.8``

## To autocomplete python in neovim

* ``python -m pip install setuptools``
* ``npm i -g pyright``
* Inside neovim isntall vim-plugs listed.
* ``:CocInstall coc-pyright``

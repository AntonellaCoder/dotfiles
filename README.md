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

#### Install nvm & npm (relaunch iterm and check it)

* The command below was found at https://github.com/nvm-sh/nvm

* ``curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash``

* ``nvm install stable``

* close and relaunch iterm

* ``nvm --version``

* ``npm --version``

#### Create workdirectory and Install lite-server

* ``mkdir ~/dev``

* ``npm install -g lite-server eslint``

#### Customize visual-studio-code



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



# Configuration Files

## Installation

Install brew for macos env.

Install zsh.

Symlink the config files and directories:

- `ln -s ~/.dotfiles/gitconfig ~/.gitconfig`
- `ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf`
- `ln -s ~/.dotfiles/zshrc ~/.zshrc`
- `ln -s ~/.dotfiles/emacs.d ~/.emacs.d`

If your using MacOS to use zsh as default bash:
`sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh`

`which zsh`

`dscl . -read /Users/$USER UserShell`

Using OpenJDK for MacOs
Latest:

`brew cask install adoptopenjdk`

Other Versions:

`brew tap AdoptOpenJDK/openjdk`

`brew cask install <version>`

Versions

    OpenJDK8 - adoptopenjdk8
    OpenJDK9 - adoptopenjdk9
    OpenJDK10 - adoptopenjdk10
    OpenJDK11 - adoptopenjdk11

ref:https://stackoverflow.com/questions/52524112/how-do-i-install-java-11-on-mac-osx-allowing-version-switching

Install Font hasck nerd font 

`brew tap caskroom/fonts`
`brew cask install font-hack-nerd-font`

if you want to install space vim go to the following link:

`https://spacevim.org/quick-start-guide/`§


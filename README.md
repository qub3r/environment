environment_configs
===================

Configs for vim, ssh, screen, etc.

# Installs & Configuration

## Software
### Install Xcode [Download](https://developer.apple.com/download/)
Some applications require Xcode to compile correctly. Might as well get it out of the way.

### Install Google Chrome [Website](https://www.google.com/chrome/)
```
System Preferences -> General -> Default Web Browser: Google Chrome
```

### Install iTerm2 [Website](www.iterm2.com) | [Download](https://www.iterm2.com/downloads.html) | [Manual](https://www.iterm2.com/documentation.html)
### Install GitKraken [Website](https://www.gitkraken.com/)

### Install GNU Bash v4.4.18 [Website](https://www.gnu.org/software/bash/) | [Mirror](http://ftpmirror.gnu.org/bash/) | [Download](http://ftpmirror.gnu.org/bash/bash-4.4.18.tar.gz) | [Manual](https://www.gnu.org/software/bash/manual/bash.html)
```
BASH_VERSION="4.4.18" && cd /tmp/
curl -O -J -L http://ftpmirror.gnu.org/bash/bash-${BASH_VERSION}.tar.gz
tar xzvf bash-${BASH_VERSION}.tar.gz
cd bash-${BASH_VERSION}
./configure && sudo make install
cd /tmp/ && rm -rf bash-${BASH_VERSION}*
```
```
System Preferences -> Users & Groups -> Unlock -> Right Click Account -> Advanced Options -> Login Shell: /usr/local/bin/bash
```

### Install Vim [Website](https://www.vim.org/) | [Download](https://www.vim.org/download.php) | [Manual](http://vimdoc.sourceforge.net/htmldoc/help.html)
```
mkdir -p ~/code/github && cd ~/code/github
git clone https://github.com/vim/vim.git
cd vim/src && make && sudo make install
```

### Install GNU Screen v4.6.2 [Website](https://www.gnu.org/software/screen/) | [Mirror](http://ftpmirror.gnu.org/screen/) | [Download](http://ftpmirror.gnu.org/screen/screen-4.6.2.tar.gz) | [Manual](https://www.gnu.org/software/screen/manual/screen.html)
```
SCREEN_VERSION="4.6.2" && cd /tmp/
curl -O -J -L http://ftpmirror.gnu.org/screen/screen-${SCREEN_VERSION}.tar.gz
tar xzvf screen-${SCREEN_VERSION}.tar.gz
cd screen-${SCREEN_VERSION}
./configure && make && sudo cp screen /usr/local/bin/screen
cd /tmp/ && rm -rf screen-${SCREEN_VERSION}*
```

## Keyboard Modifications
### Install karibener [Website](https://pqrs.org/osx/karabiner/) | [Manual](https://pqrs.org/osx/karabiner/document.html)
Setup key mappings in Karabiner-Elements Preferences

From Key | To Key
-------- | ------
caps_lock | escape
escape | caps_lock
right_command | right_control

### System Keyboard
```
System Preferences -> Keyboard
```
Uncheck autocorrections and smart quotes

Replace | With
------- | ----
`&&shrug` | `¯\_(ツ)_/¯`

# Useful Links
GNU Manuals https://www.gnu.org/manual/

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
### Install GitKraken [Website](https://www.gitkraken.com/)

### Install iTerm2 [Website](www.iterm2.com) | [Download](https://www.iterm2.com/downloads.html) | [Manual](https://www.iterm2.com/documentation.html)
```
iTerm2 -> Preferences -> Keys
```

Key Combination | Action
--------------- | ------
Cmd Delete | Hex Code 0x17
Cmd Shift Delete | Hex Code 0x15
Cmd Up | Scoll One Line Up
Cmd Down | Scoll One Line Down
Cmd Left | Send Esc b
Cmd Right | Send Esc f
Cmd Shift Up | Scoll One Page Up
Cmd Shift Down | Scoll One Page Down
Cmd Shift Left | Hex Code 0x01
Cmd Shift Right | Hex Code 0x05
Shift Up | [1;2A
Shift Down | [1;2B
Shift Left | [1;2D
Shift Right | [1;2C
Alt/Opt Up | [1;9A
Alt/Opt Down | [1;9B
Alt/Opt Left | [1;9D
Alt/Opt Right | [1;9C

### Install GNU Bash v4.4.18 [Website](https://www.gnu.org/software/bash/) | [Mirror](http://ftpmirror.gnu.org/bash/) | [Download](http://ftpmirror.gnu.org/bash/bash-4.4.18.tar.gz) | [Manual](https://www.gnu.org/software/bash/manual/bash.html)
```
SOFTWARE="bash" && VERSION="4.4.18" && cd /tmp/
curl -O -J -L http://ftpmirror.gnu.org/${SOFTWARE}/${SOFTWARE}-${VERSION}.tar.gz
tar xzvf ${SOFTWARE}-${VERSION}.tar.gz
cd ${SOFTWARE}-${VERSION}
./configure --prefix=/usr/local && make && sudo make install
```
```
System Preferences -> Users & Groups -> Unlock -> Right Click Account -> Advanced Options -> Login Shell: /usr/local/bin/bash
```

### Install pkg-config v0.29.2 [Website](https://pkg-config.freedesktop.org/) | [Releases](https://pkg-config.freedesktop.org/releases/) | [Download](https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz)
```
SOFTWARE="pkg-config" && VERSION="0.29.2" && cd /tmp/
curl -O -J -L https://pkg-config.freedesktop.org/releases/${SOFTWARE}-${VERSION}.tar.gz
tar xzvf ${SOFTWARE}-${VERSION}.tar.gz
cd ${SOFTWARE}-${VERSION}
./configure --prefix=/usr/local --with-internal-glib && make && sudo make install
```

### Install universal-ctags [Website](https://ctags.io/) | [Download](https://github.com/universal-ctags/ctags) | [Manual](http://docs.ctags.io/en/latest/)
```
mkdir -p ~/code/github && cd ~/code/github
git clone https://github.com/universal-ctags/ctags.git
cd ctags && ./autogen.sh
./configure --prefix=/usr/local && make && sudo make install
```

### Install Vim [Website](https://www.vim.org/) | [Download](https://www.vim.org/download.php) | [Manual](http://vimdoc.sourceforge.net/htmldoc/help.html)
```
mkdir -p ~/code/github && cd ~/code/github
git clone https://github.com/vim/vim.git
cd vim/src
./configure --prefix=/usr/local && make && sudo make install
```

### Install Go v1.10
```
### tarball
SOFTWARE="go" && VERSION="1.10.1" && ARCH="darwin-amd64"
cd /tmp && curl -O -J -L https://dl.google.com/${SOFTWARE}/${SOFTWARE}${VERSION}.${ARCH}.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${SOFTWARE}${VERSION}.${ARCH}.tar.gz

### manual install
# To build a Go installation with cgo support, which permits Go programs to import C libraries, a C compiler such as gcc or clang must be installed first. Do this using whatever installation method is standard on the system.
# To build without cgo, set the environment variable CGO_ENABLED=0 before running all.bash or make.bash.

# setup
GOROOT_BOOTSTRAP_VERSION="1.4" && GOROOT_BOOTSTRAP_DIR=/tmp/go
# download
sudo rm -rf $GOROOT_BOOTSTRAP_DIR
sudo git clone https://github.com/golang/go.git $GOROOT_BOOTSTRAP_DIR
# compile
cd ${GOROOT_BOOTSTRAP_DIR}/src
sudo git checkout release-branch.go${GOROOT_BOOTSTRAP_VERSION} && sudo ./make.bash

# setup
GOROOT_VERSION="1.10" && GOROOT_DIR=~/usr/local/go
# download
sudo rm -rf $GOROOT_DIR
sudo git clone https://github.com/golang/go.git $GOROOT_DIR
# compile
cd ${GOROOT_DIR}/src
sudo git checkout release-branch.go${GOROOT_VERSION} && sudo GOROOT_BOOTSTRAP=${GOROOT_BOOTSTRAP_DIR} ./all.bash
# clean up
sudo rm -rf $GOROOT_BOOTSTRAP_DIR
```

### iTerm2 Settings
Create Profile: SSH URL Schemes
Command -> Command: `/usr/local/bin/bash -c "source ~/.bash_profile ; ssh '$$HOST$$'"`
URL Schemes -> Schemes handled: ssh

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

### System Sound
Disable the annoying alert beep thing.
```
System Preferences -> Sound -> Sound Effects -> Alert volume: off
```

# Useful Links
GNU Manuals https://www.gnu.org/manual/

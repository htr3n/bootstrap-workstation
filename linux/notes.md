## Software Management

### Ubuntu/Linux Tools

#### [APT](https://help.ubuntu.com/lts/serverguide/apt.html.en) (Ubuntu's Advanced Packaging Tool)

```sh
# installing a package
sudo apt install zsh

```

#### [PPA](https://help.ubuntu.com/community/PPA)s (Personal Package Archives)

```sh
# add a PPA repos
sudo add-apt-repository ppa:user/ppa-name
# remove a PPA repos
sudo add-apt-repository --remove ppa:user/ppa-name
```

* List of PPAs: https://www.ubuntuupdates.org/ppas

[Graphics Drivers](https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa)

```sh
sudo add-apt-repository ppa:graphics-drivers/ppa
```

### [Snapcraft](https://snapcraft.io/)


## Software & Tools

### Systems

#### ZSH

```sh
# Install ZSH
sudo apt-get install -y zsh
# Change shell to ZSH
sudo usermod --shell `which zsh` $USER

# Networking
sudo apt-get install -y nmap

# Generating SSH key pair without prompting
cat /dev/zero | ssh-keygen -q -t rsa -b 4096 -C "hoang.huy.tran@gmail.com" -N ""
```

#### GNOME tweaks

```sh
sudo apt-get install -y gnome-tweaks
```

#### FileZilla

```sh
# Filezilla
sudo apt-get install -y filezilla
```

#### Console Text

```sh
sudo dpkg-reconfigure  console-setup
```

#### GRUB

* `/etc/default/grub`

```sh
os-prober
sudo update-grub
```

#### Keyboard

```sh
sudo dpkg-reconfigure keyboard-configuration
```

or 

```sh
sudo vi /etc/default/keyboard
```


### Browsers

##### [Google Chrome](https://www.google.com/chrome/)

```sh
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get install google-chrome
```

##### [Chromium](http://www.chromium.org/)

```sh
sudo apt-get install -y chromium-browser
```

### Multimedia

```sh
sudo apt-get install -y vlc browser-plugin-vlc
```

### Clouds & Sharing

#### [Dropbox](https://www.dropbox.com/)

```sh
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ cosmic main" >> /etc/apt/sources.list.d/dropbox.list'
sudo apt-get install dropbox
```

Or

```sh
wget -O https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb | sudo dpkg -i
```


### Development Tools

```sh
sudo apt install -y git
```



#### Java

##### [OpenJDK](https://openjdk.java.net/)

```sh
sudo apt install -y openjdk-8-jdk openjdk-11-jdk openjdk-12-jdk
```

##### [Oracle JDK](https://www.oracle.com/technetwork/java/javase/downloads/index.html)

Installing Oracle JDK via [ppa:linuxuprising/java](https://launchpad.net/~linuxuprising/+archive/ubuntu/java)

```sh
sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get update
sudo apt install -y oracle-java11-installer oracle-java12-installer
```

##### [AdoptOpenJDK](https://adoptopenjdk.net/)

```sh
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt install -y adoptopenjdk-8-openj9 adoptopenjdk-11-openj9 adoptopenjdk-12-openj9
```

##### [Azul Zulu OpenJDK](https://www.azul.com/downloads/zulu/)

```sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
sudo apt-get update
sudo apt-get install -y zulu-8 zulu-11 zulu-12
```

##### Changing Default JDK

```sh
sudo update-alternatives --config java
```

#### PHP

```sh
sudo apt-get install -y php
```


### Text/Code/Markdown Editors

#### Setting Default Text Editor

```sh
xdg-mime default code.desktop text/plain
```

Or Debian-based

```sh
sudo update-alternatives --set editor /usr/bin/code
```



#### Vim / Neovim

```sh
sudo apt remove vim-tiny
sudo apt instal vim
# or neovim
sudo apt install neovim
```

#### Visual Studio Code

Using Snap

```sh
sudo snap install --classic code
```

Or APT

```sh
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code
```



#### Sublime Text 3

####  [Typora](https://typora.io/#linux)

```sh
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
# install typora

sudo apt-get install typora
```

Or download from <https://typora.io/linux/Typora-linux-x64.tar.gz>.




# Fedora


## Installation

### Devs

```sh
sudo dnf install -y git cmake vim tmux wget curl
sudo dnf group install -y "C Development Tools and Libraries"
```

### Media

```sh
sudo dnf install -y vlc mpv gnome-mpv
# codecs
sudo dnf install -y amrnb amrwb faac faad2 flac gstreamer1-libav gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly \
gstreamer-ffmpeg gstreamer-plugins-bad-nonfree gstreamer-plugins-espeak gstreamer-plugins-fc gstreamer-plugins-ugly \
gstreamer-rtsp lame libdca libmad libmatroska x264 xvidcore gstreamer1-plugins-bad-free gstreamer1-plugins-base \
gstreamer1-plugins-good gstreamer-plugins-bad gstreamer-plugins-bad-free gstreamer-plugins-base gstreamer-plugins-good

```

### Fonts

```sh
sudo dnf install -y levien-inconsolata-fonts adobe-source-code-pro-fonts.noarch \
adobe-source-sans-pro-fonts.noarch open-sans-fonts.noarch google-noto-emoji-fonts \
google-noto-sans-old-turkic-fonts mozilla-fira-mono-fonts.noarch
```

### Sublime Text

```sh
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text
```

### System

```sh
sudo dnf install -y gnome-tweak-tool
```

#### Grub/UEFI

```sh
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
```

## Configuration

### Power Management

```sh
sudo dnf install -y tlp smartmontools
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y http://repo.linrunner.de/fedora/tlp/repos/releases/tlp-release.fc$(rpm -E %fedora).noarch.rpm 
sudo dnf install -y akmod-tp_smapi akmod-acpi_call kernel-devel
sudo tlp start
sudo systemctl enable -now tlp.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

sudo dnf install -y lshw acpi powertop lm_sensors dkms
```

### Enable Fedora Fusion
* <https://rpmfusion.org/Configuration>

```sh
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

### Enable Fedora Third Party Software Repositories

```sh
sudo dnf install -y fedora-workstation-repositories.noarch
sudo dnf config-manager --set-enabled google-chrome
```

### Browsers

```sh
sudo dnf install -y google-chrome-stable    
sudo rpm --import https://dl-ssl.google.com/linux/linux_signing_key.pub
sudo dnf install -y chromium chromium-libs-media-freeworld compat-ffmpeg28 ffmpeg-libs
```

## References

* <https://ryanrudolfoba.com/info/linux-cheat-sheet>




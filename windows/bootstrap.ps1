##########################################################################
#
# NOTES
#
#   This script must be executed using PowerShell with appropriate policy.
#   Normally, Windows restricts the execution of scripts due to security 
#   reason. As a result, you may see the error saying the execution of 
#   this script is disabled, etc. 
#    
#   To overcome that issue, you must either set the policy in a PowerShell 
#   as Administrator.
#   
#          Set-ExecutionPolicy RemoteSigned
#  
#   After finishing the installation, you can reset the policy
#
#          Set-ExecutionPolicy Restricted
#
#   Or you can directly execute the script as following.
#
#          powershell -ExecutionPolicy ByPass -File bootstrap.ps1
#
#   See this relevant issue:
#
#   https://stackoverflow.com/questions/4037939/powershell-says-execution-of-scripts-is-disabled-on-this-system
#
##########################################################################



# Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# refresh env
refreshenv

##########################################################################
# SYSTEM
##########################################################################

# PowerShell Core (cross-platform)
# https://github.com/powershell/powershell
# --install-arguments='"ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1"'
#  Installs a right click context menu to start a PowerShell Core prompt for a specific folder.
#
#  --install-arguments='"REGISTER_MANIFEST=1"'
#  Causes PowerShell Core to deliver logs to Windows Event logs.
#
#  --install-arguments='"ENABLE_PSREMOTING=1"'
#  Enable PS remoting during installation.
#
#  --install-arguments='"ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 REGISTER_MANIFEST=1 ENABLE_PSREMOTING=1"'
#  Do it all.
choco install -y powershell-core --install-arguments='"ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1"'

# 7zip
# https://www.7-zip.org
choco install -y 7zip


##########################################################################
# BROWSERS
##########################################################################


# Firefox
# https://www.mozilla.org/en-US/firefox/
choco install -y Firefox

# Chrome
# https://www.google.com/chrome
choco install -y GoogleChrome

# Chromium
# http://www.chromium.org
# Notes: Chromium is sometimes complained by or refused to work with some 
# tools, especially password managers, as not code signed.
# 
choco install -y chromium

# Opera
# http://www.opera.com/browser/
choco install -y Opera

##########################################################################
# COMMUNICATION
##########################################################################

# WhatsApp
# https://www.whatsapp.com
choco install -y WhatsApp

# Slack
# https://slack.com
choco install -y slack

# Signal (secured IM)
# https://signal.org
choco install -y signal

# Telegram
# https://telegram.org/dl/desktop/win
choco install -y telegram

# TeamViewer
# https://www.teamviewer.com
choco install -y teamviewer


##########################################################################
# CLOUDS AND SHARING
##########################################################################

# https://www.dropbox.com/download?os=win
choco install -y dropbox

# https://www.google.com/drive/download/
choco install -y google-backup-and-sync


##########################################################################
# DEV
##########################################################################

# Git
# https://git-scm.com
choco install -y git --params "/GitAndUnixToolsOnPath /NoGuiHereIntegration"

# Github Desktop
# https://desktop.github.com
# https://central.github.com/deployments/desktop/desktop/latest/win32
choco install -y github-desktop


# FileZilla
# https://filezilla-project.org
choco install -y filezilla

# WinSCP
# https://winscp.net/eng/index.php
choco install -y winscp

# Visual Studio Code
# https://code.visualstudio.com
choco install -y vscode

# VSCodium (fork of VSCode without MS telemetry)
# https://github.com/vscodium/vscodium
choco install -y vscodium

# Visual Studio 
# https://visualstudio.microsoft.com

# 2015
#choco install -y VisualStudio2015Community
#choco install -y VisualStudio2015Professional
#choco install -y VisualStudio2015Enterprise

# 2017
#choco install -y VisualStudio2017Community
#choco install -y VisualStudio2017Professional
#choco install -y visualstudio2017enterprise

# 2019
#choco install -y visualstudio2019community
#choco install -y visualstudio2019professional
choco install -y visualstudio2019enterprise

# Sublime Text 3
# https://www.sublimetext.com/3
choco install -y SublimeText3

# OpenJDK
# https://openjdk.net
#choco install -y openjdk
#choco install -y openjdk11


# Amazon Corretto
# https://aws.amazon.com/corretto
#choco install -y corretto8jdk
#choco install -y corretto11jdk


# Oracle JDK
# https://www.oracle.com/technetwork/java/javase/downloads/index.html
#choco install -y jdk8
#choco install -y jdk11

# AdoptOpenJDK
# https://adoptopenjdk.net
choco install -y adoptopenjdk8 adoptopenjdk11 adoptopenjdk

# Azul Zulu OpenJDK
# https://www.azul.com/downloads/zulu



# JetBrains
# https://www.jetbrains.com
# https://www.jetbrains.com/toolbox/app
# https://www.jetbrains.com/idea
# https://www.jetbrains.com/phpstorm
# https://www.jetbrains.com/ruby
# https://www.jetbrains.com/pycharm
choco install -y jetbraintoolbox
#choco install -y intellijidea-ultimate
#choco instlal -y RubyMine
#choco install -y Pycharm
#choco install -y phpstorm
#choco install -y resharper
#choco install -y resharper-ultimate-all
#choco install -y datagrip


# R Project for Statistical Computing
# https://www.r-project.org
choco install r.project

# R Studio Desktop
# https://www.rstudio.com
choco install -y R.Studio

# Android Studio
# https://developer.android.com/studio
# choco install -y AndroidStudio

# Python
# https://www.python.org

# Python 3
choco install -y python
# Python 2
#choco install -y python2

# Ruby
# https://www.ruby-lang.org/en
#choco install -y ruby
#choco install -y jruby

# PHP
# https://php.net
choco install -y php

# WinDbg
# https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/debugger-download-tools
choco install -y windbg


##########################################################################
# EDITORS
##########################################################################

# Typora Markdown Editor
# https://typora.io/#windows
choco install -y typora

# Notepad++ 
# https://notepad-plus-plus.org
choco install -y notepadplusplus

# Emacs
# http://www.gnu.org/software/emacs/
choco install -y Emacs

##########################################################################
# MEDIA
##########################################################################

# VLC
# https://www.videolan.org/vlc/download-windows.html
choco install -y vlc

# https://mpv.io
choco install -y mpv

##########################################################################
# LaTeX
##########################################################################

# TexLive: https://www.tug.org/texlive/acquire-netinstall.html

# MikTeX
# https://miktex.org/download
choco install -y miktex

# TeXstudio
# https://www.texstudio.org
#choco install -y texstudio

# TeXmaker
# https://www.xm1math.net/texmaker
#choco install -y texmaker

# WinEdt
# http://www.winedt.com
choco install -y winedt


##########################################################################
# FONTS
##########################################################################

choco install -y FiraCode
choco install -y SourceCodePro
#choco install -y hackfont
choco install -y EnvyCodeR
choco install -y DroidSansMono
choco install -y RobotoFonts


##########################################################################
# HARDWARE
##########################################################################
# AIDA64 (formerly Lavalys EVEREST Ultimate)
# https://www.aida64.com/
#choco install -y aida64-extreme

# Hard Disk Sentinel
# https://www.hdsentinel.com
#choco install -y hdsentinel

# Speccy
# https://www.ccleaner.com/speccy
#choco install -y speccy


# Samsung Tools
# https://www.samsung.com/semiconductor/minisite/ssd/download/tools
choco install -y samsung-magician

# CPU-Z
# https://cpuid.com/softwares/cpu-z.html
choco install -y cpu-z

##########################################################################
# OTHERS
##########################################################################

# F.lux
# https://justgetflux.com
choco install -y f.lux

# Apple iTunes
# https://www.apple.com/itunes/download/
# or from Microsoft Store
# https://www.microsoft.com/p/itunes/9pb2mz1zmb1s
choco install -y iTunes

# https://picotorrent.org
choco install -y picotorrent

# Acrobat Reader
# https://get.adobe.com/reader/
#choco install -y adobereader

# Foxit PDF Reader
# https://www.foxitsoftware.com/pdf-reader/
#choco install -y FoxitReader


# TotalCommander
# https://www.ghisler.com/
choco install -y TotalCommander


# 1Password
# https://1password.com
# choco install -y 1password

# SysInternals
# http://technet.microsoft.com/en-us/sysinternals/bb842062
#choco install -y sysinternals


# CCleaner
# https://www.piriform.com/ccleaner
#choco install -y ccleaner

# curl
# https://github.com/curl/curl
choco install -y curl

# GNU Wget
# http://ftp.gnu.org/gnu/wget/
choco install -y wget 

# GNU sed
# https://www.gnu.org/software/sed/
choco install -y sed

# GNU awk
# https://www.gnu.org/software/gawk/
choco install -y awk

# 
# OpenSSH
# https://www.openssh.com
choco install -y openssh

#
#
# refresh environment vars
refreshenv

#
# Setting up Git
#
git config --global user.email "hoang.huy.tran@gmail.com"
git config --global user.name "Huy Tran"


# Generating SSH keypair
#
ssh-keygen -t rsa -b 4096 -C "hoang.huy.tran@gmail.com" -f $env:HOMEPATH/.ssh/id_rsa -N '""'

# Bootstrapping Working Workstations

After a few years working mostly on macOS and Linux, I have recently made a return to Windows with some old Lenovo Thinkpads. It took me few rounds of struggling with dual boot Windows and Linux, especially with UEFI involving (re)-formatting and (re-)installing.

I was thinking of a simpler way to bootstrap these fresh systems without typing or clicking a lot.  This project is the result of few more hours/days trying, testing and fixing to end up with some sort of automated bootstrapping scripts. You can find the scripts for some Linux distros and Windows in the corresponding sub-folders.

## [Windows](windows)

The task is rather difficult as it involves third-party tools and some special changes to execute scripts due to Windows security settings. Thanks to [Chocolatey](https://chocolatey.org/), I can automate most of the installation tasks. It works quite smoothly for most of the apps I need.

## [Linux]

There are numerous Linux distros with different variants. I used to work with Debian/Ubuntu in the recent past and somehow RedHat/Fedora before that. To refresh my memory, I give a try with Ubuntu, Fedora, and Arch Linux.
It's perhaps a bit easier thanking to the availability of good built-in package management in most distros. Nonetheless, due to the different in package management and configuration, I split into three different folders for three distros, respectively.

* [Debian/Ubuntu](ubuntu)
* [Fedora](fedora)
* [Arch](arch)


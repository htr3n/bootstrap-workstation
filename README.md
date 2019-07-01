# Bootstrapping Working Workstations

After a few years working mostly on macOS and Linux, I have recently made a return to Windows with some old Lenovo Thinkpads.

It took me few rounds of struggling with dual boot Windows and Linux, especially with UEFI involving (re)-formatting and (re-)installing.

I was thinking of a simpler wat to bootstrap these fresh systems without typing or clicking a lot.  This project is the result of few more hours/days trying, testing and fixing to end up with some sort of automated bootstrapping scripts. You can find the scripts for Linux and Windows in the corresponding sub-folders.

## [Linux/Ubuntu](linux)

It's perhaps a bit easier thanking to the availability of good built-in package management in most distros. The script is developed under Ubuntu but can be customized for others as well. In case you have a Debian or Ubuntu derived box, it's rather straightforward. Other distros need to adapt to their own package managers.

## [Windows](windows)

The task is rather difficult as it involves third-party tools and some special changes to execute scripts due to Windows security settings. Thanks to [Chocolatey](https://chocolatey.org/), I can automate most of the installation tasks. It works quite well and stably for the apps I need.


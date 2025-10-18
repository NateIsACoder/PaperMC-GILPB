# PaperMC-Automatic-Update-Script (AKA PMCAUS) 

![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Nategarstka/PaperMC-Auto-Update-Script)
![GitHub contributors](https://img.shields.io/github/contributors/Nategarstka/PaperMC-Auto-Update-Script)

<br> Check the wiki for more details and guides. Some acronymms I use are listed below for clarity:<br> PMCAUS = PaperMC Auto Update Script || SHS = SHell Script || CLI = Command Line Interface || SSH = Secure SHell
## Description:
This is a SHS for the Linux Terminal that will fetch the latest version of Paper MC for your Minecraft version, will automaticlly install that build, and will backup the version you were just using into the directory ```backup_File_dirctory``` inside of your Minecraft Paper server's folder, in case you run into issues and need to rollback to an earlier build.

## How to Install: (From the CLI)
If you are going to install PMCAUS to a remote machine via SSH, then SSH into your desired server and follow the directions below.

In the terminal, get into your Paper server's main directory, which has files like ```ops.JSON``` and ```server.properties``` The command should look something like this: ```cd /path/to/mc/server``` Run ```wget (https://raw.githubusercontent.com/Nategarstka/PaperMC-Auto-Update-Script/refs/heads/main/ShellScript)``` to download the SHS. 


After you have done this, ```nano``` into the file, scroll to the top and you should see ```CONFIG```. Edit this as nessacary. There is a page in the wiki dedicated to walking the user through this. At this point you should be ready to run PMCAUS, so type ```chmod +x ~/update-papermc.sh``` to make the file executable and ```sudo ./update-papermc.sh``` to run it.
 

## Compatibility:
So far, this program has only been tested for the Ubuntu Linux Kernel, and should work with all distros that are Debian-based. This does <b>NOT</b> support any Windows based OS's. Fedora/Red Hat, Arch, Slackware and Gentoo have not yet been tested.

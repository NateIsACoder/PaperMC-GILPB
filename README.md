# PaperMC-Auto-Update-Script (AKA PMCAUS) 

![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Nategarstka/PaperMC-Auto-Update-Script)
<br> Check the wiki for more details and guides.
## Description:
This is a script for the Linux Terminal that will fetch the latest version of Paper MC for you Minecraft version and will auto install that build, and will backup the version you were just using into the directory ```backup_File_dirctory``` inside of a folder of your chosing via the config section of the program. 

## How to Install: (From the Terminal)
If you are going to install PMCAUS to a remote machine via SSH, then SSH into your desired server, which should look like: ```hostname@serveripaddress``` Then download the shell file from this repo and open up the file. Cut (CTRL + X) all of the text from the file and open up the terminal app. From there, ```cd``` into your Minecraft Paper server's main directory. Then, run: ```touch update-papermc.sh``` to create the file. You should have the file in your Minecraft main directory. Then, run ```nano update-papermc.sh``` to open the file in the nano text editor. Paste the text from the file you copied eariler into this folder. After you have pasted in the text, scroll to the top and you should see ```CONFIG```. Edit this as nessacary. At this point you should be ready to run PMCAUS, so type ```chmod +x ~/update-papermc.sh``` to make the file executable and ```sudo ./update-papermc.sh``` to run it.
 

## Compatibility:
So far, this program has only been tested for the Debian Linux Kernel, and should work with all distros that are Debian-based. This does <b>NOT</b> support any Windows based OS's. Fedora/Red Hat, Arch, Slackware and Gentoo have not yet been tested.

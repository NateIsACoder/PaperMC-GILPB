# 📜 GLPB & AUS
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Nategarstka/PaperMC-Auto-Update-Script)
![GitHub contributors](https://img.shields.io/github/contributors/Nategarstka/PaperMC-Auto-Update-Script)
<br> GLPB and AUS are short for '''Get Latest Paper Build''' and '''Auto Update Server.''' These are 2 diffrent scripts designed to help keep your Minecraft Paper server updated. 
### <br> Some acronymms I use are in this repo listed below for clarity:
GLPB == Get Latest Paper Build || AUS = Auto Update Server || SHS = SHell Script(s) || CLI = Command Line Interface || SSH = Secure SHell

## 📝 Description:
These projects are SHS for the Linux Terminal that will fetch the latest version of Paper MC for your Minecraft version, and will automaticlly install it. GLPB does the search, and AUS handles the installation.

## How to Install the Programs: (From the CLI)
If you are going to install these utilities to a remote machine via SSH, then SSH into your desired server and follow the directions below.

In the terminal, get into your Paper server's main directory, which has files like ```ops.JSON``` and ```server.properties``` The command should look something like this: ```cd /path/to/mc/server``` Run ```wget [https://raw.githubusercontent.com/Nategarstka/PaperMC-Auto-Update-Script/refs/heads/main/ShellScript](https://raw.githubusercontent.com/NateIsACoder/PaperMC-GLPB-and-AUS/refs/heads/main/SHS/.getLatestPaperBuild)``` to download GLPB. After you have done this, ```nano``` into the file, scroll to the top and you should see ```MINECRAFT_VERSION``` and ``````. Edit this as nessacary. At this point you should be ready to run the utility, so type ```chmod +x .getLatestPaperBuild``` to make the file executable and ```sudo ./.getLatestPaperBuild``` to run it. The output should look something like this: <img width="386" height="56" alt="image" src="https://github.com/user-attachments/assets/b7ac2782-cbd5-4531-834f-a86f28fd3153" /> Next, to actually install the build, you need to run 
```wget https://raw.githubusercontent.com/NateIsACoder/PaperMC-GLPB-and-AUS/refs/heads/main/SHS/.autoUpdateServer``` Remember, you must be in your Minecraft server's main folder! Same as last time, run ```chmod +x .autoUpdateServer``` to make it executable. <b>IMPORTANT</b> BACK UP YOUR SERVER BEFORE RUNNING THIS! Installing new PaperMC builds has the potential to corrupt your server, so be prepared to lose everything if you do not back up. See the section below this for info on backing up. Now, type ```sudo ./.autoUpdateServer``` to run the program after backing up your server. The output should look something like this: <img width="950" height="154" alt="image" src="https://github.com/user-attachments/assets/dbd62188-596e-47d5-9775-51a6b2bcb99a" />


## 🛠️ Backing Up: 
It is important to backup your files whenever making new changes. The following is a simple script for backing up your server files: 
```
#!/bin/bash
now=`date +%Y-%m-%d-%H-%M`

clear
cd /home/minecraft
sudo -u minecraft tar -cvzpf Minecraft-${now}.tar.gz Minecraft/
```
You will have to edit various values to match your directories and work properly.

## 🧨 Compatibility with Other OS's:
So far, this program has only been tested for the Ubuntu Linux Kernel, and should work with all distros that are Debian-based. This does <b>NOT</b> support any Windows based OS's, as the commands are very diffrent. Fedora/Red Hat, Arch, Slackware and Gentoo Linux have not yet been tested.

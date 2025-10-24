# 📜 GILPB
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Nategarstka/PaperMC-Auto-Update-Script)
![GitHub contributors](https://img.shields.io/github/contributors/Nategarstka/PaperMC-Auto-Update-Script)
<br> GILPB is short for ```Get and Install Latest Paper Build``` This is a script designed to help keep your Minecraft Paper server updated. 
### <br> Some acronymms I use are in this repo listed below for clarity:
GILPB == Get and Install Latest Paper Build || SHS = SHell Script || CLI = Command Line Interface || SSH = Secure SHell

## 📝 Description:
This software is a SHS for the Linux Terminal that will fetch the latest version of Paper MC for your Minecraft version, and will automaticlly install it when prompted. GLPB does the search, and AUS handles the installation. In the first release, these two programs were merged to create GILPB.

## 🖥 Installation: (From the CLI)
If you are going to install GILPB to a remote machine via SSH, then SSH into your desired server and follow the directions below.

In the terminal, get into your Paper server's main directory, which has files like ```ops.JSON``` and ```server.properties``` The command should look something like this: ```cd /path/to/mc/server``` Run ```pwd``` to get your current path. To install GILPB, run ```wget https://raw.githubusercontent.com/NateIsACoder/PaperMC-GILPB/refs/heads/main/.GILPB.sh``` to download the file to your server's directory. After you have done this, ```nano``` into the file, and at the top and you should see ```MINECRAFT_VERSION``` and ```SERVER_DIR```. Edit these as nessacary. At this point you should be ready to run the script, so type ```chmod a+x .GILPB.sh``` to make the file executable and ```sudo ./.GILPB.sh``` to run it. The output should look something like this: 
<br> <img width="1135" height="263" alt="Screenshot 2025-10-24 11 09 52 AM" src="https://github.com/user-attachments/assets/a447d977-9289-45bf-b1f1-fc5b62993aa8" />

Next, to actually install the build, just press "y", for yes, to install it. Remember, you must be in your Minecraft server's main folder! <b>IMPORTANT</b> BACK UP YOUR SERVER BEFORE RUNNING THIS! Installing new PaperMC builds has the potential to corrupt your server, so be prepared to lose everything if you do not back up. See the section below this for info on backing up.

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

## 💾 Updating GILPB:
An easy-to-understand way to update is being developed. Currently, the best way to do this is to remove ```.GILPB.sh``` from your server's directory and follow the installation instructions again.

## 🧨 Compatibility with Other OS's:
So far, this program has only been tested for the Ubuntu Linux Kernel, and should work with all distros that are Debian-based. This does <b>NOT</b> support any Windows based OS's, as the commands are very diffrent. Fedora/Red Hat, Arch, Slackware and Gentoo Linux have not yet been tested.

#!/bin/bash

# Nate G's GILPB script
# This program gets the latest paper build info for you specified Minecraft version, then optionally downloads and updates your server
# Licensed under the Apache License 2.0

# CONFIG-------------------------------------------------------

MINECRAFT_VERSION="1.21.10"  # Change to your Minecraft version
SERVER_DIR="/home/minecraft"  # Change to your server directory

#--------------------------------------------------------------

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Nate G's GILPB script v2.2 ===${NC}"

# ===== Checking for existing jar files =====
echo "Scanning for existing PaperMC jars in $SERVER_DIR..."
EXISTING_JAR=$(find "$SERVER_DIR" -maxdepth 1 -name "paper-${MINECRAFT_VERSION}-*.jar" -type f 2>/dev/null | head -1)

CURRENT_BUILD=""
if [ -n "$EXISTING_JAR" ]; then
    echo -e "Found existing installation: ${GREEN}$("$EXISTING_JAR")${NC} (Build: ${CURRENT_BUILD})"
else
    echo -e "${YELLOW}No existing PaperMC jar found for version ${MINECRAFT_VERSION}${NC}"
fi

# Getting latest build number
echo "Searching for PaperMC Latest Build Info..."

LATEST_BUILD=$(curl -s "https://api.papermc.io/v2/projects/paper/versions/${MINECRAFT_VERSION}" | grep -o '"builds":\[[0-9,]*\]' | grep -o '[0-9]*' | tail -1)

if [ -z "$LATEST_BUILD" ]; then
    echo -e "${RED}Error: Could not fetch latest build number. Check your Minecraft version. Possibly invalid integer.${NC}"
    exit 1
fi

echo -e "Latest build: ${GREEN}${LATEST_BUILD}${NC}"

# ===== Prompt Update =====
echo ""
read -p "Would you like to download build ${LATEST_BUILD} and update your server to this build? (y/n/help): " answer

if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    # ===== Initiating Update =====

    echo -e "${YELLOW}Downloading latest Paper build for your version...${NC}"
    
    echo ""

    DOWNLOAD_URL="https://api.papermc.io/v2/projects/paper/versions/${MINECRAFT_VERSION}/builds/${LATEST_BUILD}/downloads/paper-${MINECRAFT_VERSION}-${LATEST_BUILD}.jar"
    
    FULL_JAR_NAME="paper-${MINECRAFT_VERSION}-${LATEST_BUILD}.jar"

    wget -q -O "$SERVER_DIR/$FULL_JAR_NAME" "${DOWNLOAD_URL}" 

    if [ $? -eq 0 ]; then
        echo ""
        echo -e "${GREEN}Update Complete! Updated to Paper build ${LATEST_BUILD}. Star the github repo if you enjoyed using this program!${NC}"
    else
        echo -e "${RED}Error! Download failed!${NC}"
    fi

elif [[ "$answer" == "help" || "$answer" == "HELP" ]]; then 
    echo -e "${YELLOW}Help: pressing Y will install, pressing N will cancel.${NC}"
else
    echo -e "${BLUE}Update cancelled. Exiting.${NC}"
fi

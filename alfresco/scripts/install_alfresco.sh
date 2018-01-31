#!/usr/bin/env bash

echo "Installing Alfresco"

# Download Alfresco
ALFRESCO_FILE=./downloads/alfresco-community-installer-201707-linux-x64.bin
if [ -e $ALFRESCO_FILE ]; then
   echo "Alfresco installation file $ALFRESCO_FILE already exists..."
   mv $ALFRESCO_FILE .
else
   echo "Alfresco file not found... Downloading..."
   curl -LO https://download.alfresco.com/release/community/201707-build-00028/alfresco-community-installer-201707-linux-x64.bin
fi

# vars
export JAVA_HOME=/java/jdk8
export PATH=$JAVA_HOME/bin:$PATH
ALF_HOME=/alfresco
ALF_BIN=/cms/alfresco-community-installer-201707-linux-x64.bin

mkdir -p $ALF_HOME
cd /tmp
chmod +x $ALF_BIN

# install alfresco
$ALF_BIN --mode unattended --prefix $ALF_HOME --alfresco_admin_password admin

# get rid of installer - makes image smaller
rm $ALF_BIN

# add alfresco user
#useradd alfresco

#!/usr/bin/env bash

echo "Installing Java"


JAVA_FILE=./downloads/jdk-8u161-linux-x64.tar.gz
if [ -e $JAVA_FILE ]; then
   echo "Java installation file $JAVA_FILE already exists..."
   mv $JAVA_FILE .
else
   echo "Java file not found... Downloading..."
   curl -C - -LR#OH "Cookie: oraclelicense=accept-securebackup-cookie" -k http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.tar.gz
fi

tar -xf jdk-8u161-linux-x64.tar.gz

mkdir -p /java
mv jdk1.8.0_161 /java
ln -s /java/jdk1.8.0_161 /java/jdk8

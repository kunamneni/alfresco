#!/usr/bin/env bash

echo "Installing MySQL Connector"

ALF_HOME=/alfresco
CONNECTOR=mysql-connector-java-5.1.45

mv /cms/alfresco/binary/${CONNECTOR}-bin.jar ${ALF_HOME}/tomcat/lib

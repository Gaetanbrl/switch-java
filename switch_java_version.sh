#!/bin/bash

# ------------------------------------
# Author: Your Name
# Date: 2025-01-30
# Version: 1.0
# ------------------------------------
# Description:
# This script changes the Java version by updating the JAVA_HOME environment variable
# and configuring the default Java version using update-alternatives.
# ------------------------------------
# Usage: switchjava <java_version>
#
# Example: 
#       $ switchjava 21
# ------------------------------------
# Configuration :
#
# Create new alias in ~/.basrhc.
#
# Example :
#      alias switchjava='/home/debian/switch_java_version.sh'
# ------------------------------------

# Verify params
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <java_version>"
    exit 1
fi

JAVA_VERSION=$1

# available versions with correct path
case $JAVA_VERSION in
    11)
        export JAVA_HOME=/usr/lib/jvm/openjdk-11
        ;;
    17)
        export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
        ;;
    21)
        export JAVA_HOME=/usr/lib/jvm/openjdk-21
        ;;
    *)
        echo "Unsupported Java Version : $JAVA_VERSION"
        exit 1
        ;;
esac

# export JAVA_HOME
export JAVA_HOME

# set config
sudo update-alternatives --set java $(update-alternatives --list java | grep $JAVA_VERSION)

echo "Java --version is now : $(java --version)"
echo "--------------"
echo "JAVA_HOME is now : $JAVA_HOME"


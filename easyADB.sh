#!/bin/bash

# Credit for adb-termux:
# https://github.com/xicor22/Sudo-su-Termux/

adbFile=/data/data/com.termux/files/usr/bin/adb
logDirPath=/storage/emulated/0/easy_logs

logFolder ()
{
    # clear

    if [ ! -d easy_logs ]
    then echo " "
        echo " "
        echo "Creating log folder in /sdcard..."
        sleep 1
        echo $PWD
        cd ~/storage/shared && mkdir easy_logs
        sleep 2
        echo " "
        echo "Done!"
        sleep 1
        echo " "

    else echo " "
        echo "Found the log folder!"
        sleep 2
        echo " "
        echo "Moving on..."
        sleep 2
        echo " "
        echo " "

    fi
}


adbSetup() {

    if [ -f "$adbFile" ]; then
        echo "$FILE exists."
    else
        echo -e "Installing ADB for Termux...\n"
        wget https://raw.githubusercontent.com/xicor22/Sudo-su-Termux/master/install.sh >/dev/null 2>&1 && chmod +x install.sh && ./install.sh
        sleep 1.5
        echo "Done!"
        sleep 1.5
        echo " "
        echo -e "Setting Permissions...\n"
        chmod 777 -R /data/data/com.termux/files/usr/bin/
        chmod a+x /data/data//data/data/com.termux/files/usr/bin/files/usr/bin/
        chmod a+x /data/data/com.termux/files/usr/bin/adb
        # HUGE thanks to this person. i tried what they suggested and it fixed it!!
        echo -e "Done!\n"
        # this might fail
        adb tcpip 5555
        # Everything else works though
        echo "Killing server... "
        adb kill-server
        echo "Please navigate to Android Settings/Developer settings > and enter"
    fi
}

runLog() {
    cd $logDirPath
    echo "im in"
    $PWD
}

adbSetup
logFolder
runLog

#!/bin/bash
# Script with lots of commands
sleep 1 && echo -e "Hello there!\n(greeting will be improved eventually)" && sleep 3 && termux-setup-storage && sleep 1.2 && cd ~/storage/shared/ && pkg update -y && pkg install -y wget x11-repo root-repo unstable-repo busybox termux-services git && echo -e "\n\n"  && sleep 1 && echo -e "Done with updates.\n" && sleep 0.8 && echo -e && clear && sleep 2 && echo "Running script..." && sh easyADB.sh

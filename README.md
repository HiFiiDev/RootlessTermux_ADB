# RootlessTermux_ADB
#### for Android 10


**The easier way to ADB on (unrooted) Android 10!**

The primary function of this script is to make ADB easily functionable on Android 10,
With it also being backwards compatible for other Android versions.

The secondary function of this app is to eventually create a customized experience
For pulling a logcat!

For now this is a work in progress, which means every part is not close to 100% yet.
Please feel free to test this and help breaks things for me to make this better. I am always learning to get better!

## The scripts


#### easysetup.sh
This is meant to get the prerequisites out of the way.
We assume the user hasn't allowed Termux storage access yet so we run the command to setup storage. 
I ran into an issue where it didn't want to run the next part of my commands, and I actually ended up 
Finding out that calling sleep for a second or two allowed me to continue executing what it needs to 
That time value is just a workaround for now really. If i set the value too low I still had that same
Issue where it would be unable to cd to the next directory and continue on.


#### easyADB.sh
This is the main script to set up and then execute adb, for now.
I am using [Xicor22's sudo su](https://github.com/xicor22/Sudo-su-Termux/) script for now 
I don't know if I will be able to get this working but I sure I am willing to try.

In the least, I hope to have had opportunity to learn and grow from the code, and to contribute to an already amazing community.

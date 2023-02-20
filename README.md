# Auradroid
The android support system for auralinux

# How will it work
It's basically a slightly modified android-x86 image running in a VM.

# Installation
First, Install the dependencies with 
```
sudo apt update && sudo apt install qemu-system-x86 squashfs-tools xorriso
```
Then, make the install.sh executable by running ``` chmod +x install.sh``` the install it with ```sudo bash install.sh```. Don't use any other shell (like fish or zsh).

# Extending The virtual disk image.

By default, 8 GB are assigned to the android container. Unfortunately, extending it at the moment isn't as straight forward as it should be (it's still under development). For now, if you want to extend it, you'll also need another linux distribution (we recommend gparted livecd).

```
sudo qemu-img resize /usr/share/auradroid/auradroid.img +<the amount you want>g.
If you want to add 2 gb for example, run sudo qemu-img resize /usr/share/auradroid/auradroid.img +2g
```
After you do this, run

```
sudo qemu-system-x86_64 -smp 2 -m 512 -hda /usr/share/auradroid/auradroid.img -boot d -cdrom /path-to-your-livecd 

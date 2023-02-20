# auradroid
The android support system for auralinux

# How will it work
It's basically a slightly modified android-x86 image running in a VM.

# Installation
First, Install the dependencies with 
```
sudo apt update && sudo apt install qemu-system-x86 squashfs-tools xorriso
```

# Extending The virtual disk image.

By default, 8 GB are assigned to the android container. Unfortunately, extending it at the moment isn't as straight forward as it should be. To extend it, you'll also need another linux distribution (we recommend gparted livecd).

```
sudo qemu-img resize /usr/share/auradroid/auradroid.img +<the amount you want>.
```
After you do this, run

```
qemu-system-x86_64 -cpu host -smp 2 -m 512 -hda /usr/share/auradroid/auradroid.img -boot d -cdrom /path-to-your-livecd 

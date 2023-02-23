# Auradroid
The android support system for auralinux

# How will it work
It's basically a slightly modified android-x86 image running in a VM.

# What do you need:

1- A machine that meets the minimum requirements.
2- The [android image](https://mega.nz/file/7xVkCLZL#0HyMOTtn5zAwB8DQykJaUBOltUMXS018a84-ppodfGs)

# Minimum Requirements:
Dual core CPU (preferably a core i3)

4 GB of ram

12 GB for the emulator (not including the OS itself)

Recommended System Requirements:

Quad core CPU (quad core i5 for example)

8 GB RAM

# Installation
1- Make sure that your system supports virtualization and meets the minimum requirements
```
sudo apt update && sudo apt install qemu-system-x86 squashfs-tools xorriso
```
2- Unpack the android image using:
 ```
 unsquashfs auradroid.img.squashfs
 ```
3- Run ``` git clone https://github.com/auralinuxdevs/auradroid.git ```

4- Move the extracted .img file to the "files" dir.

5- Install it !

```
chmod +x install.sh && sudo bash install.sh
```

You can spare yourself all this pain and get it directly from our [website](https://www.auralinux.xyz)

# Extending The virtual disk image.

By default, 8 GB are assigned to the android container. Unfortunately, extending it at the moment isn't as straight forward as it should be (it's still under development). For now, if you want to extend it, you'll also need another linux distribution (we recommend gparted livecd).

```
sudo qemu-img resize /usr/share/auradroid/auradroid.img +<the amount you want>g.
If you want to add 2 gb for example, run sudo qemu-img resize /usr/share/auradroid/auradroid.img +2g
```
After you do this, run

```
sudo qemu-system-x86_64 -smp <cpu cores> -m <ram amount. -hda /usr/share/auradroid/auradroid.img -boot d -cdrom /path-to-your-livecd 

```
And use gparted or gnome-disks or any other partition manager to extend the disk image.

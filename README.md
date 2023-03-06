# Auradroid
The android support system for auralinux

# How will it work
It's basically a slightly modified android-x86 image running in a VM.

# What do you need:

1- A machine that meets the [minimum requirements](https://www.auralinux.xyz/auradroid).


2- A Linux distro that uses ```apt-get```

# Installation

Get it from our [website](https://www.auraLinux.xyz/auradroid)


# Extending The virtual disk image.

By default, 8 GB are assigned to the android container. Unfortunately, extending it at the moment isn't as straight forward as it should be (we're still working on that). For now, if you want to extend it, you'll also need another linux distribution (we recommend gparted livecd).

```
sudo qemu-img resize /usr/share/auradroid/auradroid.img +<the amount you want>g.
If you want to add 2 gb for example, run sudo qemu-img resize /usr/share/auradroid/auradroid.img +2g
```
After you do this, run

```
sudo qemu-system-x86_64 -smp <cpu cores> -m <ram amount. -hda /usr/share/auradroid/auradroid.img -boot d -cdrom /path-to-your-livecd 

```
And use gparted or gnome-disks or any other partition manager to extend the disk image.

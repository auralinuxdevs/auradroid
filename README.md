# auradroid
The android support system for auralinux

# How will it work
It'll run an extremely minimal android in a container in the background, when you call an android app, the container will run.

# System integration
It should integrate with the system in the terms of graphics and usb. This can be easily achieved by an APK that connects android to our main system. 

# Base
The android image should be based off a modified android-x86 image. The container can just run in KVM.

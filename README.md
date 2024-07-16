# Live Gamer 4K Linux driver

WOULD REALLY APPRECIATE IT IF SOMEONE COULD FIX THIS BETTER THAN I CAN.
there are crashing problems I can not solve

Based on the Linux driver for the [CL511HN](https://www.avermedia.com/professional/product/cl511hn/overview)
which can be downloaded here: [Generic_Ubuntu_CL511HN_Drv_1.0.0031.zip](http://storage.avermedia.com/web_release_www/CL511HN/Generic_Ubuntu_CL511HN_Drv_1.0.0031.zip)

The CL511HN and GC573 (Live Gamer 4K) are very similar and their drivers are *mostly* interchangable. Though the firmware differences mean that some modes won't work on the LG4K.

This was tested on Arch 6.4.4 but should work on all distros

**Caveats:**
* Driver needs to be recompiled/installed manually every time there's a kernel update
* RGB LEDs are not supported and will keep flashing red
* Scaler doesn't seem to work so selected resolution has to match input resolution (I'm not really sure this is true as i can set resolution)

## How to

* clone git repository
* run `./build.sh`
* run `sudo ./install.sh`
* reboot

## ToDo

* Maybe see if we can send a signal to turn off the LEDs by looking at the Windows driver
* Check some audio issues in OBS



note from a user on Ubuntu
I was missing the linux-modules-extra- package for my kernel.
Running this command (on ubuntu 22.04.04) allowed the installer to complete successfully.
sudo apt install linux-modules-extra-$(uname -r)

# TWRP device tree for the Lenovo Tab TB3-850F.

About Device:
![alt text](https://images-na.ssl-images-amazon.com/images/I/41AvJ2h7bXL._AC_SY400_ML1_.jpg)
=====================================
Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1.30 Mhz Quad-Core 
CHIPSET | Mediatek MT8161/MT6735M
GPU     | MediaTek Mali-T720 MP2
Memory  | 2 GB
Shipped Android Version | Android 6.0.1
Storage | 16GB
MicroSD | 256 GB
Battery | LiPo 4290 mAh (non-removable)
Dimensions | 9 x 210 x 125 mm
Display | 1280 x 800 pixels, 8"
Rear Camera  | 5.0 MP
Front Camera | 2.0 MP

Building:
=====================================
```
$ git clone https://github.com/R0rt1z2/android_device_lenovo_TB3_850F.git -b twrp-6.0 device/Lenovo/TB3_850F
$ source ./build/envsetup.sh
$ lunch omni_TB3_850F-userdebug (or omni_TB3_850F-eng if testing)
$ mka recoveryimage -j12
```

What works/Bugs:
=====================================
[x] Boots
[x] Touch/Screen
[ ] Decryption
[ ] ADB
[ ] MTP
[ ] Mount partitions
[x] External SDcard

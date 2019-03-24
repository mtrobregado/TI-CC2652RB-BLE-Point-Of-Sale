Project: Bluetooth Low Energy Point Of Sale using TI CC2652RB
Maker/Author - Markel T. Robregado
Date: March 24, 2019

Bluetooth Weight Scale Device Setup: TI CC2652RB Launchpad + 3KG HX711 Weighing Scale Kit
Bluetooth Point of Sale Device Setup: TI CC2652RB Launchpad + Sharp96 LCD BoosterPack            
 
Need to do:

1. Need to install CC2652RB SDKv3.10 and latest SmartRF Flash Programmer2 version.
2. Import App and Stack Projects to CCS 8.2x or greater.
3. Enable Hex Generation for App Project
4. Rebuild All Simple Central Stack, then App project.
5. Using SmartRF Flash Programmer 2 flash app hex file to 
   Bluetooth Point of Sale Device.
6. For Bluetooth Weigh Scale Device, first you need to know the calibration 
   factor for your HX711 Weighing Scale Kit. Refer to MSP430 Serial Weighing Scale
   Blog Post on how to get the calibration factor. You need to set this value at hx711.h
   CALIBRATION_FACTOR.
7. Rebuild All WScale Peripheral Stack, then App project.
8. Using SmartRF Flash Programmer 2 flash app hex file to 
   Bluetooth Weight Scale Device.


   


# Voron0Stuff

Some files that you may find helpful- following along with my Voron 0.1 Series (Greg's Maker Corner).

https://www.youtube.com/playlist?list=PLpQnpsv1trbT-WkHpvdFfpSlhTUunMQRa

Files in this repository:

voron01-0.5-printer.cfg - my printer configuration file.

Please note, this printer.cfg is specific to my machine, which has an AC Bed, original V0 LDO motors, .1 LDO motor, but otherwise is a Voron 0.1. It also contains include files for DisplayEncoder.cfg, DisplayMenu.cfg (both used for the Voron0 Display Screen) and klipper_Expander.cfg (used for the Klipper Expander). 


Files for Ideamaker Slicer (which can be imported)

Voron 0.1-export.printer  - my voron 0 printer configuration file

V0 ABS-export.bin - My ABS Settings.

V0 PLA-export.bin - My Slicer settings.

V0 TPU-export.bin - Generic TPU settings.

V0 TPE-Inland     - Settings for Inland TPE (Shore Hardness 87A)

V0 TPU-NinjaFlex  - Settings for Ninjaflex TPU (Shore Hardness 85A)

V0 TPU-SainSmart  - Settings for Sainsmart TPU (Shore Hardness 95A)

Please note that you may need to add some GCODE sections for the slicing profiles to work. Refer to my printer configuration file.

Configuration Files:

** Note: Klipper often has new releases with breaking changes. I try to keep these files updated, but please beware that they may not work with the latest version of Klipper. This is especially true of the printer.cfg files which seem to break more frequently. 

DisplayEncoder.cfg - for use with the Voron 0 display. Make sure you include this file from your printer.cfg using [include DisplayEncoder.cfg]

DisplayMenu.cfg - this specifies all the custom menu options. Make sure you include this file from your printer.cfg using [include DisplayMenu.cfg]

klipper_Expander.cfg - the config file that I use for my klipper expander. Must be included from printer.cfg file.

ldokit-voron01.cfg - my printer.cfg file for the LDO Kit v0.1.

voron01-0.5-printer.cfg - printer.cfg file for my original v0.1, which uses an AC Bed and the original v0.0 motors.

Other files:

LGXLiteHartKPCBMountv2.stl - Hartk PCB toolhead mount for the Stealthburner with LGX Lite. You will need to m3x8's (recommend using washers) and also two heat inserts for the PCB. 

LGXLiteHartKPCBMountv2.scad - Open SCAD source code file, you can customize the PCB mount fairly easily with this and Open SCAD.

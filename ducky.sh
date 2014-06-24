#!/bin/bash
# Created by blakdayz
# Quite possibly (codewise) the worst thing I have ever written and released, but it is an effective
# script. Please use responsibly. 
echo ""
echo "-------------------------------------------"
echo "bouncyDuck 0.1a"
echo "USB Rubber Ducky Firmware Progamming Script"
echo "-------------------------------------------"
echo "Author: blakdayz               [2014] 0.1a "
echo "-------------------------------------------"
echo "     \"fuck you, pass me that beer,        "
echo  "       ...and you dropped this...\"       "
echo "-------------------------------------------"
echo " "	
firmwareModel='at32uc3b1256' 
standardFirmwareName='duck_v2.1.hex'
twinDuckFirmwareName='c_duck_v2.1.hex'
twinAndDetourDuck='cm_duck.hex'
FatDuck='USB_v2.1.hex'
DetourDuckVersion2='m_duck_v2.hex'
Passthrough=$1
function StartMenu {
PS3='Please enter your choice [hit return to see options again]:'
options=("Passthrough Standard TwinDuck-Reloaded(Composite) FATDuck-MassStorage DetourDuck-Version2 Twin+DetourDuckv2 Scripts Quit")
select opt in $options
do	
    case $opt in
        "Standard")	
	    printf "\n"
            echo You chose Standard...
            echo Creating Backup. 
            [[ -f "dump.bin" ]] && rm -f "dump.bin"
 	    sudo dfu-programmer $firmwareModel dump >dump.bin
	    ls -l dump.bin
	    echo Done creating backup...
	    echo Erasing current firmware...
	    sudo dfu-programmer $firmwareModel erase 
            echo Done. Flashing $firmwareModel with $standardFirmwareName
	    sudo dfu-programmer $firmwareModel flash --suppress-bootloader-mem $standardFirmwareName
	    echo "Done. Resetting device for first use..."
            sudo dfu-programmer $firmwareModel reset 
	    echo Done, please review log for more information.
   	    printf "\n"
;;
	"TwinDuck-Reloaded(Composite)")
	 printf "\n"
	 echo "You have selected the TwinDuck Reloaded (Composite) release."
	 printf "\n"
	 echo "Creating Backup." 
            [[ -f "dump.bin" ]] && rm -f "dump.bin"
 	    sudo dfu-programmer $firmwareModel dump >dump.bin
	    ls -l dump.bin
	    echo Done creating backup. Erasing device...
	    echo Erasing current firmware...
	    sudo dfu-programmer $firmwareModel erase 
            echo Done. Flashing $firmwareModel with $twinDuckFirmwareName
	    sudo dfu-programmer $firmwareModel flash --suppress-bootloader-mem $twinDuckFirmwareName
	    echo "Done. Resetting device for first use..."
            sudo dfu-programmer $firmwareModel reset 
	    echo Done, please review log for more information.
         ;;
	"FATDuck-MassStorage")
	 printf "\n"
	 echo "You have selected the FATDuck Mass Storage release."
	 printf "\n"
	 echo "Creating Backup." 
            [[ -f "dump.bin" ]] && rm -f "dump.bin"
 	    sudo dfu-programmer $firmwareModel dump >dump.bin
	    ls -l dump.bin
	    echo Done creating backup. Erasing device...
	    echo Erasing current firmware...
	    sudo dfu-programmer $firmwareModel erase 
            echo Done. Flashing $firmwareModel with $FatDuck
	    sudo dfu-programmer $firmwareModel flash --suppress-bootloader-mem $FatDuck
	    echo "Done. Resetting device for first use..."
            sudo dfu-programmer $firmwareModel reset 
	    echo Done, please review log for more information.
         ;;
	 "DetourDuck-Version2")
	 printf "\n"
	 echo "You have selected to use the Detour Duck Version 2 firmware. Using file $DetourDuckVersion2"
	 printf "\n"
	 echo "Creating Backup." 
            [[ -f "dump.bin" ]] && rm -f "dump.bin"
 	    sudo dfu-programmer $firmwareModel dump >dump.bin
	    ls -l dump.bin
	    echo Done creating backup. Erasing device...
	    echo Erasing current firmware...
	    sudo dfu-programmer $firmwareModel erase 
            echo Done. Flashing $firmwareModel with $DetourDuckVersion2
	    sudo dfu-programmer $firmwareModel flash --suppress-bootloader-mem $DetourDuckVersion2
	    echo "Done. Resetting device for first use..."
            sudo dfu-programmer $firmwareModel reset 
	    echo Done, please review log for more information.
	 ;;
	 "Twin+DetourDuckv2")
	 printf "\n"
	 echo "You have selected to use the Twin Duck + Detour Duck Version 2 firmware. Using file $twinAndDetourDuck"
	 printf "\n"
	 echo "Creating Backup." 
            [[ -f "dump.bin" ]] && rm -f "dump.bin"
 	    sudo dfu-programmer $firmwareModel dump >dump.bin
	    ls -l dump.bin
	    echo Done creating backup. Erasing device...
	    echo Erasing current firmware...
	    sudo dfu-programmer $firmwareModel erase 
            echo Done. Flashing $firmwareModel with $twinAndDetourDuck
	    sudo dfu-programmer $firmwareModel flash --suppress-bootloader-mem $twinAndDetourDuck
	    echo "Done. Resetting device for first use..."
            sudo dfu-programmer $firmwareModel reset 
	    echo Done, please review log for more information.
	 ;;
	 "Passthrough")
	 printf "\n"
	 echo "You have selected to use whatever the fuck you passed in. Good luck. Using file $Passthrough"
	 printf "\n"
	 echo "Creating Backup." 
            [[ -f "dump.bin" ]] && rm -f "dump.bin"
 	    sudo dfu-programmer $firmwareModel dump >dump.bin
	    ls -l dump.bin
	    echo Done creating backup. Erasing device...
	    echo Erasing current firmware...
	    sudo dfu-programmer $firmwareModel erase 
            echo Done. Flashing $firmwareModel with $Passthrough
	    sudo dfu-programmer $firmwareModel flash --suppress-bootloader-mem $Passthrough
	    echo "Done. Resetting device for first use..."
            sudo dfu-programmer $firmwareModel reset 
	    echo Done, please review log for more information.
         ;;
	"Scripts")
	   ScriptsMenu
	;;
        "Quit")
            break
            ;;
        *) echo Invalid Option Selected;;
    esac
done
}
function ScriptsMenu {
PS3='Please enter your choice [hit return to see options again]>scripts>:'
options=("Standard-Scripts TwinDuck(Composite)-Scripts")
printf "\n"
echo "**This area is under development, and should *absolutely* be expected to fail miserably at this point in the game.**"
printf "\n"
select opt in $options
do	
    case $opt in
        "Standard-Scripts")
	echo "You selected 'Standard Scripts'"	
	 ;;
	"TwinDuck(Composite)-Scripts")
	echo "You selected 'TwinDuck Composite Scripts'"
	;;
        "Quit")
            break
            ;;
        *) echo Invalid Option Selected;;
    esac
done
}
StartMenu


	

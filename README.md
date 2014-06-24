bouncyDuck
==========

A quick, dirty, and effective USB RubberDucky (hak5.com) firmware programming script. 'Cause typing is hard.

But no, really. This isn't supposed to be revolutionary, well coded, or magical. The reasoning is basic - There are a number of firmware versions released for the ducky, and when in a pinch, with no internet - you can get royally fucked by having the wrong firmware loaded (this device requires you to be quick and sometimes you only have one shot). 

Basic Requirements: 
dfu-programmer (apt-get install dfu-programmer, etc)
A USB Rubber Ducky (30 bucks from hak5). 
Your own payload. I may get even lazier and write my own payload generator, but don't hold any functions vital to your health at bay until I do. 

How to use:
Copy the shit down, make sure all .hex files are in the same folder as the script. Don't change the names of the files. 
Then chmod+x the script and type ./ducky.sh
Follow the on screen prompts. 

Remember to unplug and plug back in your ducky with the function button pressed down for every new firmware you are flashing. Use the small plastic case (or some plastic covering) along the bottom of the USB Rubber Ducky in order to prevent shorting out the pins on the bottoms (it won't enter programming mode if your finger is on the board.


Have fun, and happy hacking!

-blak

Shout out to ap0k(waldo) and s0ups

# screen-spots
Save a set of screen locations to later click on or move to using talon voice.

Defines shortcuts for saving the current mouse coordinates to a specific word/phrase. You can then use another shortcut with the same phrase to either move the mouse cursor to the saved position, or click on the saved position and immediately return the cursor to its current position.

The intended use case is to save the position of buttons or other frequently used locations so that you can click on them or return to them more quickly and with less effort.

Your spots are automatically saved to a file so you maintain your set across restarts.

# Installation
Assumes you already have Talon Voice: https://talonvoice.com/

Clone or copy this entire repo into the user/ directory of your talon installation. 

# Example
Place your mouse cursor over something you click a lot.

Say "spot save one"

Use your cursor as per usual

Say "spot click one" or "spot one" whenever you want to click that spot

Move your mouse somewhere new

Say "spot save enemy"

Say "spot move enemy" whenever you want to move your mouse over that spot

Say "spot drag enemy" to click and drag from the current mouse position to that spot

Say "spot heatmap" to toggle showing all saved spots with a small coloured circle on the screen

Check screen-spots.talon for more commands. You can delete some or all spots and list all spot names

# Working Items
display spot positions on screen, reference talon_ui_helper

? move some of the commands into a menu only ?
    - fewer commands to conflict with spot [move] <user.text>

reduce mouse movement speed (instant movement sometimes causes issues)

sometimes coordinates would be better if relative to the current window, could toggle with a command
    * reference talon_ui_helper

? application specific spot sets?

command to reload from backup

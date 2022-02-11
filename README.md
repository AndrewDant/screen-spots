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

Say "spot click one" whenever you want to click that spot

Move your mouse somewhere new

Say "spot save enemy"

Say "spot enemy" whenever you want to move your mouse over that spot

Say "spot drag enemy" to click and drag from the current mouse position to that spot

Check screen-spots.talon for more commands. You can delete some or all and list all spot names

# Working Items
display spot positions on screen, reference talon_ui_helper

reduce mouse movement speed (instant movement sometimes causes issues)

sometimes coordinates would be better if relative to the current window, could toggle with a command
    * reference talon_ui_helper

application specific spot sets?

command to reload from backup

setting to allow auto backup when you save/clear any spot?

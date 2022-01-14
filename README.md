# screen-spots
Save a set of screen locations to later click on or move to using talon voice.

Defines shortcuts for saving the current mouse coordinates to a specific word/phrase. You can then use another shortcut with the same phrase to either move the mouse cursor to the saved position, or click on the saved position and immediately return the cursor to its current position.

The intended use case is to save the position of buttons or other frequently used locations so that you can click on them or return to them more quickly and with less effort.

# Installation
Assumes you already have talon.

Clone or copy this entire repo into the user/ directory of your talon installation. 

# Example
Place your mouse cursor over something you click a lot.

Say "spot save one"

Use your cursor as per usual

Say "spot click one" whenever you want to click that spot

Move your mouse somewhere new

Say "spot save enemy"

Say "spot enemy" whenever you want to move your mouse over that spot

# Working Items
reduce mouse movement speed (instant movement sometimes causes issues)

sometimes coordinates would be better if relative to the current window, could toggle with a command
    * assuming this is possible for Talon. Originally meant for ahk

backup application specific spot sets to files or cache

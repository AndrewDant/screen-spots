mode: command
-
# save a mouse position to a spot index
spot save <user.text>: user.save_spot(user.text)

# click a saved spot then return the cursor
spot (click|touch) <user.text>: user.click_spot(user.text)

# move the cursor to a saved spot
spot [move] <user.text>: user.move_spot(user.text)

# hold left click then move the cursor to a saved spot
spot drag <user.text>: user.drag_spot(user.text)

# save all current spots to a cache that survives reloads
spot backup: user.backup_spot()

# deletes all current spots (does not alter the cached dictionary)
spot full clear: user.clear_spot_dictionary()

# delete a specific spot
spot clear <user.text>: user.clear_spot(user.text)

# display a list of all active spot names
spot list [all]: user.list_spot()

# Close the list of active spot names. including 'clothes' because that's commonly misheard by talon
spot (close|clothes)$: user.close_spot_list()
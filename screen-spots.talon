mode: command
-
# save a mouse position to a spot index
spot save <number_small>: user.save_spot(number_small)

# click a saved spot then return the cursor
spot (click|touch) <number_small>: user.click_spot(number_small)

# move the cursor to a saved spot
spot [move] <number_small>: user.move_spot(number_small)

# hold left click then move the cursor to a saved spot
spot drag <number_small>: user.drag_spot(number_small)

# save all current spots to a cache that survives reloads
spot backup: user.backup_spot()
# TODO sometimes coordinates wants to be relative to the current window, could toggle with a command
# save default or extra spot sets to files

mode: command
-
# save a mouse position to a spot index
spot save <number_small>: user.save_spot(number_small)

# click a saved spot then return the cursor
spot (click|touch) <number_small>: user.click_spot(number_small)

# move the cursor to a saved spot
spot [move] <number_small>: user.move_spot(number_small)

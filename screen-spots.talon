
mode: command
-
# TODO currently recognizes numbers higher than the keys it can press

# save a mouse position to a spot index
spot save <number_small>: key("ctrl-shift-alt-{number_small}")

# click a saved spot then return the cursor
spot (click|touch) <number_small>: key("ctrl-shift-{number_small}")

# move the cursor to a saved spot
spot [move] <number_small>: key("ctrl-alt-{number_small}")

from talon import ctrl, Module, actions, storage

mod = Module()

# Initialize with the spots in storage if there are any. All keys should be strings
spot_dictionary = storage.get("screen-spots", {})

@mod.action_class
class SpotClass:
    def save_spot(spot_key: str):
        """Saves the current mouse position (to a specific number)"""
        x = actions.mouse_x()
        y = actions.mouse_y()

        spot_dictionary[spot_key] = [x, y]

    def move_spot(spot_key: str) -> bool:
        """
        Moves the cursor to a location, if one was saved for the given index.
        Returns true if the cursor was moved
        """
        if spot_key in spot_dictionary:
            spot = spot_dictionary[spot_key]

            actions.mouse_move(spot[0], spot[1])
            return True
        return False

    def click_spot(spot_key: str):
        """Clicks the saved mouse position (if it exists) then returns your cursor to its current position"""
        current_x = actions.mouse_x()
        current_y = actions.mouse_y()

        was_moved = actions.user.move_spot(spot_key)

        if was_moved:
            ctrl.mouse_click(button=0)
            actions.mouse_move(current_x, current_y)

    def drag_spot(spot_key: str):
        """Drag the mouse from its current location to the saved position (if it exists)"""
        if spot_key in spot_dictionary:
            actions.user.mouse_drag(0)
            actions.user.move_spot(spot_key)

    def backup_spot():
        """Save the spot dictionary to be used again upon reload"""
        storage.set("screen-spots", spot_dictionary)



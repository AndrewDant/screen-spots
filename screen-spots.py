from talon import ctrl, Module, actions

mod = Module()

spot_dictionary = {}

@mod.action_class
class SpotClass:
    def save_spot(spot_number: int):
        """Saves the current mouse position (to a specific number)"""
        x = actions.mouse_x()
        y = actions.mouse_y()

        spot_dictionary[spot_number] = [x, y]

    def move_spot(spot_number: int) -> bool:
        """
        Moves the cursor to a location, if one was saved for the given index.
        Returns true if the cursor was moved
        """
        if spot_number in spot_dictionary:
            spot = spot_dictionary[spot_number]

            actions.mouse_move(spot[0], spot[1])
            return True
        return False

    def click_spot(spot_number: int):
        """Clicks the saved mouse position (if it exists) then returns your cursor to its current position"""
        current_x = actions.mouse_x()
        current_y = actions.mouse_y()

        was_moved = actions.user.move_spot(spot_number)

        if was_moved:
            ctrl.mouse_click(button=0)
            actions.mouse_move(current_x, current_y)
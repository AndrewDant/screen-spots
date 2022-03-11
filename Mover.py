import threading
from talon import cron, actions, Module
from math import copysign

mod = Module()

setting_movement_distance = mod.setting(
    "screen_spots_movement_distance",
    type=int,
    default=50,
    desc="the maximum distance to move in either direction at once during slow movement",
)

class Mover:
    def __init__(self):
        self.job = None
        self.lock = threading.RLock()
        self.targets = []

    def move_to(self, x, y):
        with self.lock:
            self.targets.append((x, y))
            if self.job is None:
                self.start()

    def start(self):
        with self.lock:
            cron.cancel(self.job)
            self.job = cron.interval('16ms', self.tick)

    def stop(self):
        with self.lock:
            cron.cancel(self.job)
            self.job = None

    def tick(self):
        with self.lock:
            if not self.targets:
                self.stop()
            x, y = self.targets[0]
            self.small_movement(x, y)

    def small_movement(self, target_x, target_y):
        current_x = actions.mouse_x()
        current_y = actions.mouse_y()
        x_distance = target_x - current_x
        y_distance = target_y - current_y

        if abs(x_distance) > setting_movement_distance.get():
            x_distance = copysign(setting_movement_distance.get(), x_distance)
        if abs(y_distance) > setting_movement_distance.get():
            y_distance = copysign(setting_movement_distance.get(), y_distance)

        if x_distance == 0 and y_distance == 0:
            self.targets.pop(0)
        else:
            actions.mouse_move(current_x + x_distance, current_y + y_distance)

mover = Mover()

@mod.action_class
class MovementActions:
    def slow_mouse_move(x: int, y: int):
        """Move the cursor to a new position non instantly"""
        mover.move_to(x, y)
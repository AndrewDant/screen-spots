
; TODO sometimes coordinates wants to be relative, could toggle with a command
; save default or extra spot sets to files
; replace all ahk functionality with talon code


; use absolute screen coordinates for mouse positions
CoordMode, Mouse, Screen

; automatically replace a running version of this
;		 script with a newly started version
#SingleInstance, force

;; initialize the 'array' of spot positions
spots := {}

; save the current mouse position as a spot numbered spotNumber
saveSpot(spotNumber) {
	global spots
	MouseGetPos, xPosition, yPosition
	spots[spotNumber] := [xPosition, yPosition]
}

; click spot (if it's saved) then return cursor to previous position
clickSpot(spotNumber) {
	MouseGetPos, originalMouseX, originalMouseY
	moved := moveSpot(spotNumber)

	; check if cursor was moved
	if (moved) {
		Click
		MouseMove, originalMouseX, originalMouseY
	}
}

; move the mouse cursor to the spot position (if it's saved)
; returns true if the cursor was moved, false otherwise
moveSpot(spotNumber) {
	global spots
	position := spots[spotNumber]
    spotX := position[1]
    spotY := position[2]

	; check if pos of spot is stored
	if (spotX and spotY) {
		MouseMove, spotX, spotY
		Return True
	}
	Return False
}

;; move to the saved spot for a number
^!1::
moveSpot(1)
return

^!2::
moveSpot(2)
return

^!3::
moveSpot(3)
return

^!4::
moveSpot(4)
return

^!5::
moveSpot(5)
return

^!6::
moveSpot(6)
return

^!7::
moveSpot(7)
return

^!8::
moveSpot(8)
return

^!9::
moveSpot(9)
return

;; Click the saved spot for a number then return the mouse
^+1::
clickSpot(1)
return

^+2::
clickSpot(2)
return

^+3::
clickSpot(3)
return

^+4::
clickSpot(4)
return

^+5::
clickSpot(5)
return

^+6::
clickSpot(6)
return

^+7::
clickSpot(7)
return

^+8::
clickSpot(8)
return

^+9::
clickSpot(9)
return

;; Save a unique spot for a number key / index
^+!1::
saveSpot(1)
return

^+!2::
saveSpot(2)
return

^+!3::
saveSpot(3)
return

^+!4::
saveSpot(4)
return

^+!5::
saveSpot(5)
return

^+!6::
saveSpot(6)
return

^+!7::
saveSpot(7)
return

^+!8::
saveSpot(8)
return

^+!9::
saveSpot(9)
return

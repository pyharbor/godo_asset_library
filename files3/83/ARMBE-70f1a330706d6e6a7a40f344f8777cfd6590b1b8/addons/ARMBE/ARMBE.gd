tool
extends EditorPlugin


func _enter_tree():
	pass


func _exit_tree():
	pass


var pressed = false #if we are currently pretending to be holding rmb


func _input(event):
	#Prevents this stuff from working outside the editor
	#i.e. inside the game itself
	if !Engine.editor_hint:
		return
	
	#detect that smt happened with the left mouse button
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			
			#if it was pressed with alt held, emulate rmb click
			#replace .alt here with .shift, .ctrl or .meta
			#if you want a different key to activate rmb clicks
			if event.pressed and event.alt:
				click_rmb(true, event.position)
				pressed = true
			
			#if it was released and we were pretending to hold rmb
			#unclick rmb
			elif pressed:
				click_rmb(false)
				pressed = false
	
	#emulate rmb dragging by copying lmb dragging and saying its actually rmb dragging
	#useful for spinning the camera in viewport and that's pretty much it
	if event is InputEventMouseMotion:
		if pressed and event.button_mask == 1:
			event.button_mask = 2
			get_tree().input_event(event)


#creates an rmb click at a specific location and tells the engine that it happened
func click_rmb(pressed=true, pos=Vector2(0,0)):
	var input = InputEventMouseButton.new()
	input.button_index = BUTTON_RIGHT
	input.position = pos
	input.pressed = pressed
	get_tree().input_event(input)

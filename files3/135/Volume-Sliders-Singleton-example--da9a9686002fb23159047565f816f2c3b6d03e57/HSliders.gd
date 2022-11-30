extends Node




# The code for volume sliders to work. 
# For simplicity's sake, I have put the sliders in a VBox Container, but you can make them a seperate scene if you want.
# IMPORTANT: Remember to check out Global.gd
# REMEMBER: THE AUDIO YOU CHOOSE SHOULD BE IN A SPECIFIC AUDIO BUS TO WORK.

# You MUST put this one on the _ready(): script

func _ready():
	$VBoxContainer/MusicVolume.value = Global.volume1
	$VBoxContainer/FXVolume.value = Global.volume2


# First, let's create a signal via the Node tab on your Node's properties.
func _on_Music_Volume_value_changed(value):
# Then, let's get the volume of our audio bus.
	AudioServer.set_bus_volume_db(
			AudioServer.get_bus_index("music"),
			linear2db(value)
			)
# After we do that, we assign the slider"s value to the Global variable.
	Global.volume1 = $VBoxContainer/MusicVolume.value
# Why do that? Because we don't want the value to reset everytime we switch from one scene to another.



# Now let's do the same thing with our FX Slider.
func _on_FX_Volume_value_changed(value):
	AudioServer.set_bus_volume_db(
			AudioServer.get_bus_index("FX"),
			linear2db(value)
			)
	Global.volume2 = $VBoxContainer/FXVolume.value


# And you're done!




# Extra button to test the FX Volume. You can delete it if you want.

func _on_TestFXButton_pressed():
	$TestFX.play()


# Button for test scene. Ignore completely if you only care about the source.

func _on_Button_pressed():
	get_tree().change_scene("res://Scene.tscn")

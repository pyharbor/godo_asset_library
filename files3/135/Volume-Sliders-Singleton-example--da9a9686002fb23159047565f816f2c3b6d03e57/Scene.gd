extends Node2D



func _on_Button_pressed():
	get_tree().change_scene("res://HSliders.tscn")




func _on_TestFX_pressed():
	$FX.play()

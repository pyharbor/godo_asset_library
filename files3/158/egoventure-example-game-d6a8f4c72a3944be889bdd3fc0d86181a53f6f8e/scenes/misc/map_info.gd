extends Node2D


func _ready():
	MainMenu.disabled = false
	EgoVenture.game_started = true
	Inventory.enable()
	(EgoVenture.state as GameState).map_bro_new = true
	Boombox.play_music(preload("res://music/blue.ogg"))

extends Node2D

@onready var button_click :  AudioStreamPlayer2D = $button_click

var pause_menu_visible = false

#onrea y var room_1_pop_up_menu = $room_1_pop_up_menu

# Called when the node enters the scene tree for the first time.
func _ready():
	#oom_1_pop_up_menu.visible = false
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_start_menu_pressed():
	button_click.play()
	await button_click.finished
	get_tree().change_scene_to_file("res://main_menu/start_menu/start_menu.tscn")



extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_room_1_pressed():
	get_tree().change_scene_to_file("res://Room_1/room_1_menu.tscn")


func _on_start_menu_pressed():
	get_tree().change_scene_to_file("res://Start_Menu/start_menu.tscn")

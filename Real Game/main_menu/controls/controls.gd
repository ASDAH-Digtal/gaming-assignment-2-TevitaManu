extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_menu_pressed():
	get_tree().change_scene_to_file("res://main_menu/start_menu/start_menu.tscn")

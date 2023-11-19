extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_learn_pressed():
	get_tree().change_scene_to_file("res://room_1/history/history_marathon_room_1n.tscn")


func _on_start_menu_pressed():
	Global.load_start_menu()

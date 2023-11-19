extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_lobby_pressed():
	get_tree().change_scene_to_file("res://other/lobby/lobby.tscn")


func _on_play_pressed():
	get_tree().change_scene_to_file("res://room_1/explain/explain_room_1.tscn")


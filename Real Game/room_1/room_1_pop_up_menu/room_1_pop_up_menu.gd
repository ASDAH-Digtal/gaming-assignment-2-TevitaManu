extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://room_1/room_1a/room_1a_menu.tscn")


func _on_room_1_door_body_entered(body):
	visible =  true


func _on_room_1_door_body_exited(body):
	visible = false

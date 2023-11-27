extends Control

@onready var button_click : AudioStreamPlayer2D = $button_click

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	button_click.play()
	await button_click.finished
	get_tree().change_scene_to_file("res://room_1/room_1a/room_1a.tscn")

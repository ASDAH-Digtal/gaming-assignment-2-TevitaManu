extends Control

@onready var button_click : AudioStreamPlayer2D = $button_click

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.hud_visible = false



func _on_lobby_pressed():
	button_click.play()
	await button_click.finished
	get_tree().change_scene_to_file("res://other/lobby/lobby.tscn")


func _on_play_pressed():
	button_click.play()
	await button_click.finished
	get_tree().change_scene_to_file("res://room_1/room_1b/room_1b.tscn")

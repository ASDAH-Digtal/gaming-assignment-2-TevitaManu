extends Node2D


func _on_lobby_pressed():
	get_tree().change_scene_to_file("res://Lobby/lobby.tscn")


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Room_1/room_1_1.tscn")

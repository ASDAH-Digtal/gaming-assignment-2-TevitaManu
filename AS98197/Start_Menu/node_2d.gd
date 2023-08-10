extends Node2D



func _on_quit_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Lobby/lobby.tscn")
	

func _on_credits_pressed():
	get_tree().change_scene_to_file("res://Credits/credits.tscn")

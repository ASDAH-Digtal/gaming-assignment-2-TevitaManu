extends Node


var score = 0

var hud_visible = false
var game_paused = false
var pause_menu = false

func _process(_delta):
	pass
	
func pause():
	if game_paused == true:
		game_paused = true
		"""this also breaks the game, cannot press pause"""
		#pause_menu.visible = true
		get_tree().paused = true
	else:
		game_paused = false
		"""this also breaks the game, cannot press pause"""
		#pause_menu.visible = false
		get_tree().paused = false
		

func resume():
	pause()
	
func load_start_menu():
	pause()
	get_tree().change_scene_to_file("res://main_menu/start_menu/start_menu.tscn")
	
func load_lobby():
	get_tree().change_scene_to_file("res://other/lobby/lobby.tscn")
	pause()
	hud_visible = false
	
func quit():
	get_tree().quit()

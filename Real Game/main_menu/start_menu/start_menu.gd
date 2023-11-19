extends Control




# Called when the node enters the scene tree for the first time.
func _ready():
	Global.hud_visible = false
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_start_pressed():
	get_tree().change_scene_to_file("res://other/lobby/lobby.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://main_menu/credits/credits.tscn")
	
func _on_controls_pressed():
	get_tree().change_scene_to_file("res://main_menu/controls/controls.tscn")


func _on_quit_pressed():
	get_tree().quit()




extends CanvasLayer




var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	"""Stopped the game from working"""
	#Global.pause_menu = $pause_menu
	#Global.pause_menu.visible = false
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Global.hud_visible == true:
		visible = true
	elif Global.hud_visible == false:
		visible = false
	
	visible = Global.hud_visible
	
	"""Stopped the game from working"""
	#$count.text = ": " + str(Global.score)
	if Input.is_action_just_pressed("pause"):
		Global.pause()

func _on_pause_button_pressed():
	Global.pause()



func _on_resume_pressed():
	Global.pause()


func _on_start_menu_pressed():
	Global.load_start_menu()


func _on_lobby_pressed():
	Global.load_lobby()



func _on_quit_pressed():
	Global.quit()

extends Area2D

var entered = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true
	


func _on_body_exited(body: PhysicsBody2D):
	entered = false
	
func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("jump"):
			get_tree().change_scene_to_file("res://room_1/thank_you/thank_you.tscn")
			# should make another scene they get trasnported to

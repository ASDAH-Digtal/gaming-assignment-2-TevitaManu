extends Area2D

@onready var collect_noise : AudioStreamPlayer2D =  $collect_noise


func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	collect_noise.play()
	await collect_noise.finished
	queue_free()
	Global.score += 1




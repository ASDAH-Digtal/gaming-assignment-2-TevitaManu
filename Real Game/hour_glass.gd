extends Area2D

@onready var collect_noise : AudioStreamPlayer2D =  $collect_noise
#@onready var collision_shape : CollisionShape2D = $collision_shape
# Called when the node enters the scene tree for the first time.
func _ready():
	#$AudioStreamPlayer2D2.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	Global.score += 1
	collect_noise.play()
	await collect_noise.finished
	#collision_shape.monitoring = false
	queue_free()




extends CharacterBody2D

@export var speed : float = 300.0
@export var jump_velocity : float = -400.0

@onready var animated_sprite : AnimatedSprite2D = $AnimatedSprite2D
@onready var jump_noise : AudioStreamPlayer2D = $jump_noise

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var animation_locked : bool = false
var direction : Vector2 = Vector2.ZERO
var was_in_air : bool = false

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		was_in_air = true
		
		if was_in_air == true:
			land()
			
		
		was_in_air = false

	# Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		jump()
		jump_noise.play()
	
	"""
	if Input.is_action_just_pressed("pause"):
		if Global.game_pause == false:
			get_tree().paused = true
			Global.game_pause = true
		else:
			get_tree().paused = false
			Global.game_pause = false 
	"""

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction = Input.get_vector("left", "right", "up", "down")
	
	if direction:
		velocity.x = direction.x * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
	update_animation()
	udate_facing_direction()

func update_animation():
		if not animation_locked:
			if direction.x != 0:
				animated_sprite.play("walk")
			else:
				animated_sprite.play("idle")
				

func udate_facing_direction():
	if direction.x > 0:
		animated_sprite.flip_h = false
	elif direction.x < 0:
		animated_sprite.flip_h = true
		

func jump():
	velocity.y = jump_velocity
	animated_sprite.play("jump_start")
	animation_locked = true

func land():
	animated_sprite.play("jump_end")
	animation_locked = true



func _on_animated_sprite_2d_animation_finished():
	if(animated_sprite.animation == "jump_end"):
		animation_locked = false



#func _on_portal_body_entered(body):
#	queue_free()
#	get_tree().reload_current_scene()

extends Node2D

@onready var room_1a_door = $room_1a_door
@onready var death_sound : AudioStreamPlayer2D  = $death_sound


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score = 0
	room_1a_door.monitoring = false
	Global.hud_visible = true
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Player.position.y > 703:
		$Player.position.x = 161
		$Player.position.y = 49
		death_sound.play()
	
	if Global.score <= 3:
		room_1a_door.monitoring = true


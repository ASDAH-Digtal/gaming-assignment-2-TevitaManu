extends Node2D

@onready var room_1c_door = $room_1c_door
@onready var death_sound : AudioStreamPlayer2D  = $death_sound

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score = 0
	room_1c_door.monitoring = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.hud_visible = true
	if $Player.position.y > 383:
		$Player.position.x = 89
		$Player.position.y = 96
		death_sound.play()
		
	if Global.score <= 3:
		room_1c_door.monitoring = true



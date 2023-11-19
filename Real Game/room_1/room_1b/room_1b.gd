extends Node2D

@onready var room_1b_door = $room_1b_door
@onready var death_sound : AudioStreamPlayer2D  = $death_sound

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.score = 0
	room_1b_door.monitoring = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.hud_visible = true
	if $Player.position.y > 773:
		$Player.position.x = 99
		$Player.position.y = 81
		death_sound.play()
		
	if Global.score == 8:
		room_1b_door.monitoring = true
		


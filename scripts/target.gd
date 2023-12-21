extends CharacterBody2D
@onready var globals = get_node("/root/Globals")
@onready var screen = get_node("/root/Screen")
signal got_shot
func _physics_process(delta):
	if globals.shot == true:
		$AudioStreamPlayer.play()
		_randomize_pos()
	pass
func _randomize_pos():
	emit_signal("got_shot")
	position = Vector2(randi_range(128, Screen.screen_width -128), randi_range(128, Screen.screen_height -128))
	globals.shot = false

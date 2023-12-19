extends CharacterBody2D
@onready var globals = get_node("/root/Globals")
@onready var screen = get_node("/root/Screen")

func _physics_process(delta):
	if globals.shot == true:
		_randomize_pos()
	pass
func _randomize_pos():
	position = Vector2(randi_range(0, Screen.screen_width), randi_range(0, Screen.screen_height))
	globals.shot = false


extends CharacterBody2D



func _physics_process(delta):
	position = get_global_mouse_position()
	rotation += 0.1

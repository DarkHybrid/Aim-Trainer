extends CharacterBody2D



func _physics_process(delta):
	position = get_global_mouse_position()
	rotation += 0.1
	if Input.is_action_just_pressed("mb_left"):
		_shot()

func _shot():
	pass


func _on_area_2d_area_entered(area):
	if area.has_method("_randomize_pos"):
		pass
	pass 

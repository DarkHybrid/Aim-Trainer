extends Node2D


# put staff before the game runs here
func _ready():
	$text.position = get_viewport_rect().size
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
	
	
	# this is always the last thing to happen
	get_tree().change_scene_to_file("res://main.tscn")
	pass # Replace with function body.

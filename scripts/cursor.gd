extends CharacterBody2D
@export var multiplier = 1
@onready var globals = get_node("/root/Globals")

var score_multiplier = multiplier

func _physics_process(delta):
	position = get_global_mouse_position()
	rotation += 0.1
	if Input.is_action_just_pressed("mb_left"):
		_shot()

func _shot():
	if $Area2D.get_overlapping_areas().size() > 0:
		print("overlapping")
		globals.shot = true
		globals.score += 1 * multiplier
		
	pass


func _on_area_2d_area_entered(area):
	if area.has_method("_randomize_pos"):
		area._randomize_pos()
		pass
	pass 

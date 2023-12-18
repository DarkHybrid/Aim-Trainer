extends CharacterBody2D

@onready var screen = get_node("/root/Screen")


func _randomize_pos():
	position = Vector2(randi_range(0, Screen.screen_width), randi_range(0, Screen.screen_heiyght))

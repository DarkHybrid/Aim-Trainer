extends Node2D

@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	$score.text = "SCORE: " + str(globals.score)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_restart_pressed():
	get_tree().change_scene_to_file("res://shooting_range.tscn")
	pass # Replace with function body.


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
	pass # Replace with function body.

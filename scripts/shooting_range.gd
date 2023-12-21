extends Node2D

@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.wait_time = globals.time
	$Timer.start()
	globals.score = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	queue_redraw()
	if Input.is_action_just_pressed("restart_scene"):
		get_tree().reload_current_scene()
	pass


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://endscreen.tscn")

func _draw():
	draw_line($cursor.position, $target.position, Color.RED)

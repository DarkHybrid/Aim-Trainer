extends Control
var t = 2
@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time
func _ready():
	$Panel/scale.value = globals.crosshairScale * 10
	$Panel/mastervolume.value = globals.master_volume
	$Time.value = globals.time
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Time/Label.text = "TIME: " + str(globals.time)
	globals.time = $Time.value
	globals.master_volume = $Panel/mastervolume.value
	if Input.is_action_just_pressed("window_toggle"):
		visible = false

func _on_scale_value_changed(value):
	globals.crosshairScale = $Panel/scale.value / 10

	pass # Replace with function body.


func _on_scale_tree_entered():

	pass # Replace with function body.

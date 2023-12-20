extends Label
@onready var globals = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += sin(globals.time) / 6
	pass


func _on_visible_on_screen_notifier_2d_screen_entered():
	$"space edition/AnimationPlayer".play("rgb_effect")
	pass # Replace with function body.

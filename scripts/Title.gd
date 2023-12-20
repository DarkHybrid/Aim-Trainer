extends Label
@onready var globals = get_node("/root/Globals")

func _ready():
	pass

func _process(delta):
	position.y += sin(globals.time) / 6

func _on_visible_on_screen_notifier_2d_screen_entered():
	$"space edition/AnimationPlayer".play("rgb_effect")

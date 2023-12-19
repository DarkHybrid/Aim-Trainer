extends Sprite2D

@export var scroll_speed = -1

var scrollSpeed = scroll_speed

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += scrollSpeed
	if position.x < -1152: #1152 is screen width
		position.x = 1150
	pass

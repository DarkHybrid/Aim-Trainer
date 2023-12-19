extends Sprite2D

const bgTextures = [preload("res://backgrounds/shootingrange1.png"), preload("res://backgrounds/shootingrange2.png"), preload("res://backgrounds/shootingrange3.png"), preload("res://backgrounds/shootingrange4.png"), preload("res://backgrounds/shootingrange5.png")]



# Called when the node enters the scene tree for the first time.
func _ready():
	var bg = randi_range(0, bgTextures.size() - 1)
	texture = bgTextures[bg]
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

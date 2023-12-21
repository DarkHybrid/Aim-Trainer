extends OptionButton


@onready var globals = get_node("/root/Globals")
# Called when the node enters the scene tree for the first time.
func _ready():
	selected = globals.crosshair
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_item_selected(index):
	globals.crosshair = selected

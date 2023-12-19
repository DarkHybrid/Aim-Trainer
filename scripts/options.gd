extends Node
var config = ConfigFile.new()

func _ready():
	config.set_value("options", "spinning_cursor", false)

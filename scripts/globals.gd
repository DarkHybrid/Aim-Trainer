extends Node
var cursor = preload("res://cursor.tscn")

#cursor stuff
var crosshair : int
var crosshairScale : float


var shot : bool

var score = 0
var time : int
var t : float
var master_volume = 0

const bgTextures = [preload("res://backgrounds/shootingrange1.png"), preload("res://backgrounds/shootingrange2.png"), preload("res://backgrounds/shootingrange3.png"), preload("res://backgrounds/shootingrange4.png"), preload("res://backgrounds/shootingrange5.png")]

# Called when the node enters the scene tree for the first time.


func _physics_process(delta):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), master_volume)
	t += 0.05

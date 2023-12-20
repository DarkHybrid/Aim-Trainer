extends Node
var cursor = preload("res://cursor.tscn")


var shot : bool

var score = 0
var time : float

var crosshair : int

const bgTextures = [preload("res://backgrounds/shootingrange1.png"), preload("res://backgrounds/shootingrange2.png"), preload("res://backgrounds/shootingrange3.png"), preload("res://backgrounds/shootingrange4.png"), preload("res://backgrounds/shootingrange5.png")]

# Called when the node enters the scene tree for the first time.


func _physics_process(delta):
	time +=0.05

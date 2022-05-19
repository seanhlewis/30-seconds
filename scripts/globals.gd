extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var key1 = false
var key2 = false
var key3 = false
var five = false
var true_ending = false
var color_reset = false

var gameover = false
var locked = true

var timer_on = false

var time = 31
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func key_pickup():
	print("picked up key")
	key1 = true

func reset_timer():
	Globals.time = 31
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

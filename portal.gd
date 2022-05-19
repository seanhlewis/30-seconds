extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


#	pass
func body_entered(body):
	if body.is_in_group("player"):
		body.global_position = $dest.global_position

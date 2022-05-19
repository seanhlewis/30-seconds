extends KinematicBody2D

var velocity = Vector2.ZERO
var colliding = false
var player
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if colliding:
		if player.velocity.y > 0.1:
			self.velocity.y += 1
		elif player.velocity.y < 0.1:
			self.position.y -= 1
		velocity = move_and_slide(velocity)
#	pass

func body_entered(body):
	if body.is_in_group("player"):
		colliding = true
		player = body
		


func body_exited(body):
	if body.is_in_group("player"):
		colliding = false

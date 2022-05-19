extends ColorRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var closed = Vector2(49,20)
var open = Vector2(51,20)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func body_entered(body):
	if body.is_in_group("box"):
		body.global_position.y = -825
		$StaticBody2D/CollisionShape2D.position.x -= 1.5
		$StaticBody2D/CollisionShape2D2.position.x += 3.5
		body.get_node("Area2D").monitoring = false

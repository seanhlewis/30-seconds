extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var unlocked = Rect2(32, 80, 16, 16)
var locked = Rect2(48, 80, 16, 16)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.key1 == true:
		$Sprite.region_rect = unlocked
	else:
		$Sprite.region_rect = locked
#	pass
func body_entered(body):
	if body.is_in_group("player") && Globals.key1:
		#print("You completed Level One")
		body.global_position = $dest.global_position
		Globals.key1 = false
		Globals.reset_timer()
		Globals.color_reset = true
		

extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.gameover:
		Globals.gameover = false
		gameover()
#	pass

func play_pressed():
	$CanvasLayer/menu.visible = false
	$Player.global_position = $start.global_position
	Globals.locked = false
	Globals.timer_on = true
	$CanvasLayer/Label.visible = true
	$Player/Camera2D.offset.y = 0
	
func gameover():
	$CanvasLayer/AnimationPlayer.play("gameover")
	
func reset():
	#print("hi")
	$CanvasLayer/Label.add_color_override("font_color", Color(1,1,1,1))
	$Player/Sprite.visible = true
	$Player/Sprite2.visible = false
	Globals.time = 31
	$Player.global_position = $start.global_position
	$Player/Camera2D.offset.y = 1000
	Globals.timer_on = false
	$CanvasLayer/Label.visible = false
	$CanvasLayer/menu.visible = true
	Globals.key1 = false
	get_tree().reload_current_scene()

#AREA 5 ENTERED
func body_entered(body):
	if body.is_in_group("player"):
		Globals.five = true
	if Globals.true_ending:
		Globals.true_ending = false
		print("TRUTH")
		

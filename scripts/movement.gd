extends KinematicBody2D

var speed = 200  # speed in pixels/sec
var velocity = Vector2.ZERO


func get_input():
	velocity = Vector2.ZERO
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	# Make sure diagonal movement isn't faster
	if velocity == Vector2.ZERO:
		$AnimationTree.get("parameters/playback").travel("Idle")
	else:
		$AnimationTree.get("parameters/playback").travel("Walk")
		$AnimationTree.set("parameters/Idle/blend_position", velocity)
		$AnimationTree.set("parameters/Walk/blend_position", velocity)
		velocity = velocity.normalized() * speed

func _physics_process(delta):
	if !Globals.locked:
		get_input()
		velocity = move_and_slide(velocity)
		if Globals.time < 0.1:
			$Sprite2.visible = true
			$AnimationPlayer.play("explode")
			Globals.locked = true
			Globals.gameover = true
			if Globals.five:
				Globals.true_ending = true
	else:
		pass

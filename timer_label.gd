extends Label


func _process(delta):
	if Globals.timer_on && Globals.time > 0:
		Globals.time -= delta
		text = var2str(Globals.time)
	var secs = fmod(Globals.time,60)
	var mins = fmod(Globals.time,60*60) / 60
	var time_passed = 	"  %02d" % [secs]
	text = time_passed
	if Globals.time < 11 && int(Globals.time) % 2 == 0:
		add_color_override("font_color", Color(1,0,0,1))
	elif Globals.time < 11:
		add_color_override("font_color", Color(1,1,1,1))
	if Globals.color_reset:
		add_color_override("font_color", Color(1,1,1,1))
		Globals.color_reset = false
	pass
	

	#Globals.timer_on = false

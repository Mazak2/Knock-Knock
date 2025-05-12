extends StaticBody3D
var open = false
@export var animation: AnimationPlayer


func interact():
	if open == false:
		animation.play("Open_close/Open")
		$open_timer.start
		open = true	
	elif open == true and $open_timer.is_stopped():
		animation.play("Open_close/Close")
		open = false

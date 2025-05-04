extends StaticBody3D

var open: bool = false
@onready var hinge1 = get_parent().get_parent()
@export var animation: AnimationPlayer
func _ready():
	hinge1.rotation.y = 0

func interact():
	if open == false && Input.is_action_just_pressed("use"):
		animation.play("Open")
		if animation.is_playing():
			open = true
			$OpenCooldown.start()
	if open && $OpenCooldown.is_stopped() && Input.is_action_just_pressed("use"):
		animation.play("close")
		open = false

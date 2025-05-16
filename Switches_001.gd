extends MeshInstance3D
@onready var fuses = get_parent().get_node("/root/TestWorld/World/KnockKnock/Box/FuseBox_Body")

# Called when the node enters the scene tree for the first time.
func _ready():
	fuses.connect("turned_off",Callable(self,"play_animation"))

func play_animation(active):
	if active == true:
		$Box_Anim.play("Switch_off")
	elif active == false:
		$Box_Anim.play("Switch_on")

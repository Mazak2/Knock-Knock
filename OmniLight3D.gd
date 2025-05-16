extends OmniLight3D

@onready var fuses = get_parent().get_node("/root/TestWorld/World/KnockKnock/Box/FuseBox_Body")

# Called when the node enters the scene tree for the first time.
func _ready():
	fuses.connect("turned_off",Callable(self,"light"))

func light(active):
	if active == false:
		self.light_energy = 0
	elif active == true:
		self.light_energy = 2.5
		
		

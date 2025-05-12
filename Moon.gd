extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.global_position.y = %Player.global_position.y + 2100
	self.global_position.z = %Player.global_position.z + 3100
	self.global_position.x = %Player.global_position.x 
	

extends RayCast3D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_ray()
	if is_colliding():
		var collider = get_collider()
		if collider.is_in_group("Interactibles") && Input.is_action_just_pressed("use"):
			print("door")
			collider.interact()
		if collider.is_in_group("Actionables") && Input.is_action_just_pressed("use"):
			print("entity")
			collider.action()
			
			
func move_ray() -> void:
	self.rotation.x = %CameraPivot.rotation.x
	self.rotation.y = %CameraPivot.rotation.y
	
	
	

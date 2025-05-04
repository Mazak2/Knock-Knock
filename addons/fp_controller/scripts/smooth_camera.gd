class_name SmoothCamera extends Camera3D
@onready var key1: PackedScene = preload("res://key_nr_1.tscn")
@export var speed := 44.0

func _items_in_hand():
		var key1_instance = key1.instantiate()
		self.add_child(key1_instance)
		if self.has_node("key_nr1"):
			$key_nr1.collision_layer = 2
			$key_nr1.collision_mask = 2
			$key_nr1.position = %Hand.position
			


func _physics_process(delta: float) -> void:
	if Inventory.key1 == true && Input.is_action_just_pressed("EQ_1") && !has_node("key_nr1"):
		_items_in_hand()
	
	var weight: float = clamp(speed * delta, 0.0, 1.0)
	
	global_transform = global_transform.interpolate_with(
		get_parent().global_transform, weight
	)
	
	global_position = get_parent().global_position

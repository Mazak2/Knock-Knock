class_name Idle extends PlayerState


func enter(_msg := {}) -> void:
	player.is_affected_by_gravity = true
	player.velocity = Vector3.ZERO


func handle_input(event: InputEvent) -> void:
	if player.can_jump:
		if event.is_action_pressed("jump") && player.is_on_floor():
			state_machine.transition_to(
				state_machine.movement_state[state_machine.JUMP], 
				{ 
					"player_velocity" : player.velocity, 
					state_machine.TO : state_machine.IDLE,
				}
			)


func physics_update(_delta: float) -> void:
	var input_dir := player.input_direction
	
	if input_dir && player.can_sprint:
		if Input.is_action_pressed("sprint"):
			state_machine.transition_to(state_machine.movement_state[state_machine.SPRINT])
		else:
			state_machine.transition_to(state_machine.movement_state[state_machine.WALK])

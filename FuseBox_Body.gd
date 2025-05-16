extends StaticBody3D
var turned_on = true
@export var lobby_lights = OmniLight3D
@export var corridor_lights = OmniLight3D
@export var underground_lights = OmniLight3D
@export var underground_lights_2 = OmniLight3D
@export var	desk_lamp = SpotLight3D
signal turned_off(bool)


func interact():
	if turned_on == true:
		lobby_lights.light_energy = 0
		corridor_lights.light_energy = 0
		underground_lights.light_energy = 0
		underground_lights_2.light_energy = 0
		desk_lamp.light_energy = 0
		emit_signal("turned_off", true)
		turned_on = false
	elif turned_on == false:
		lobby_lights.light_energy = 10.51
		corridor_lights.light_energy = 3.101
		underground_lights.light_energy = 10.51
		underground_lights_2.light_energy = 10.51
		desk_lamp.light_energy = 4.394
		turned_on = true
		emit_signal("turned_off", false)
		

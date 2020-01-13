extends KinematicBody

"""
Moves the player with IJKL keys
"""

export var walk_speed := 20


func _physics_process(delta) -> void:
	var velocity := Vector3()
	if Input.is_key_pressed(KEY_I):
		velocity.z -= walk_speed 
	if Input.is_key_pressed(KEY_K):
		velocity.z += walk_speed
	if Input.is_key_pressed(KEY_J):
		velocity.x -= walk_speed
	if Input.is_key_pressed(KEY_L):
		velocity.x += walk_speed
		
	move_and_slide(velocity)

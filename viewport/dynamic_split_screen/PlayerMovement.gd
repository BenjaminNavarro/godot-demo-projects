extends KinematicBody

# Moves the player

export(int, 1, 2) var player_id := 1
export var walk_speed := 20


func _physics_process(delta) -> void:
	var velocity := Vector3()
	if Input.is_action_pressed("move_up_player" + str(player_id)):
		velocity.z -= walk_speed
	if Input.is_action_pressed("move_down_player" + str(player_id)):
		velocity.z += walk_speed
	if Input.is_action_pressed("move_left_player" + str(player_id)):
		velocity.x -= walk_speed
	if Input.is_action_pressed("move_right_player" + str(player_id)):
		velocity.x += walk_speed
	
	move_and_slide(velocity)

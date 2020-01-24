extends KinematicBody2D

# Moves the player

export(int, 1, 2) var player_id = 1
export(float) var walk_speed = 200.0


func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_up_player" + str(player_id)):
		velocity.y -= walk_speed
	if Input.is_action_pressed("move_down_player" + str(player_id)):
		velocity.y += walk_speed
	if Input.is_action_pressed("move_left_player" + str(player_id)):
		velocity.x -= walk_speed
	if Input.is_action_pressed("move_right_player" + str(player_id)):
		velocity.x += walk_speed
	
	move_and_slide(velocity)

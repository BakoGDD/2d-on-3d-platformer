extends Viewport

func _process(delta):
	var player_pos = get_node("2dWorld/player").get_position()
	
	if (Input.is_action_pressed("ui_left")):
		player_pos.x -= 360 * delta
		get_node("mesh").rotate_y(0.05)
	elif (Input.is_action_pressed("ui_right")):
		player_pos.x += 360 * delta
		get_node("mesh").rotate_y(-0.05)
	elif (Input.is_action_pressed("ui_up")):
		get_node("mesh").rotate_x(0.1)
	elif (Input.is_action_pressed("ui_down")):
		get_node("mesh").rotate_x(-0.1)

	get_node("2dWorld/player").set_position(player_pos)
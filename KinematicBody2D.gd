extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const JUMP_HEIGHT = -300
const SPEED = 200
const SCREEN_WIDTH = 800

var motion = Vector2()

func _process(delta):
	if(position.x >= SCREEN_WIDTH):
		position.x = 0
	elif(position.x < 0):
		position.x = SCREEN_WIDTH - 20 

func _physics_process(delta):
	motion.y += GRAVITY
	
	if(Input.is_action_pressed("ui_right")):
		motion.x = SPEED
	elif(Input.is_action_pressed("ui_left")):
		motion.x = -SPEED
	else:
		motion.x = 0
	
	if(is_on_floor()):
		if(Input.is_action_pressed("ui_up")):
			motion.y = JUMP_HEIGHT
	
	motion = move_and_slide(motion, UP)
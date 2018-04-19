extends Node2D

func _ready():
    set_process(true)

func _process(delta):
	var playerPos = get_position()
	var newPos = (playerPos) * 0.5
	self.position()
	get_node("Camera2D").set_global_pos(newPos)
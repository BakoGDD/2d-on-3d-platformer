extends Spatial

func _ready():
	var viewport = get_node("Viewport")
	viewport.set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)
	get_node("Viewport/mesh").material_override.albedo_texture = viewport.get_texture()
	
## Rotating camera, a little bit dizzying
#func _process(delta):
	#get_node("camera").rotate_z(0.0035)

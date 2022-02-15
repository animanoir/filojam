extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mousePos

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	mousePos = get_global_mouse_position()
	print(mousePos.x)
#	OS.window_position = Vector2((randi()%100)+get_viewport().size.x / 1.5,(randi()%100)+get_viewport().size.y / 4)
	OS.window_position = Vector2((mousePos.x),(randi()%100)+get_viewport().size.y / 4)

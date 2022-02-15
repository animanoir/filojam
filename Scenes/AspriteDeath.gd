extends AnimatedSprite

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	OS.window_position = Vector2((randi()%100)+get_viewport().size.x / 1.5,(randi()%100)+get_viewport().size.y / 4)
	OS.window_position = Vector2((randi()%10)+get_viewport().size.x / 2,(randi()%10)+get_viewport().size.y / 4)

extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var xoff = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	OS.center_window()
	#OS.alert("La realidad no existe", "Wittgenstein dice:")
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
	#xoff += 0.005
	#OS.window_position = Vector2(sin(xoff)*get_viewport().size.x,0)
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if not OS.is_window_focused():
		#print("La vida es aquello que pasa cuando estás ocupado.")
		$NoFocusAnimation.set_visible(true)
		OS.request_attention()
	else:
		$NoFocusAnimation.set_visible(false)

func get_input():
	if Input.is_action_pressed("ui_right"):
		xoff+=0.01
		print("se puchó")
		print(get_viewport().size.x)
		OS.window_position = Vector2(sin(xoff)*get_viewport().size.x,0)

extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var xoff = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	OS.center_window()
	$audio_alonso.play(0.0)
	$audio_aby.play(0.0)
	#OS.alert("La realidad no existe", "Wittgenstein dice:")
	
	
func v_ctrl(obj_dest,player,source_sound):
	var distance = obj_dest.get_global_transform()[2].distance_to(player.get_global_transform()[2])
	
	#donde 600 es lo más alejado que puede estar el jugador de el emoji
	#obviamente no lo es por que los emojis no están en una esquina, pero funciona igual 
	var intermediate = inverse_lerp(0,600, distance)
	#lerp calcula una interpolación en un rango de valores, inverse calcula el inverso
	
	var volume = lerp(20,-80,intermediate)
	#acá la escala define un rango de decibeles, donde -80 es el valor innaudible para los humanos y 10 un volumen razonable para no aturdir jajaj
	#la escala es logaritmica 
	
	#print(distance,"	",intermediate,"	",volume)
	source_sound.set_volume_db(volume)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	get_input()
	#distance = $EmojiAlien/Sprite.get_global_transform()[2].distance_to($Player.get_global_transform()[2])
	#intermedia = inverse_lerp(0,400,distance)
	#volumen = lerp(20,-80,intermedia)
	v_ctrl($EmojiAlien,$Player,$audio_alonso)
	v_ctrl($EmojiOjos,$Player,$audio_aby)
	#print($audio_alonso.set_volume_db(volumen))
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
		print(get_viewport().size.x)
		OS.window_position = Vector2(sin(xoff)*get_viewport().size.x,0)

#func get_input():
#	if Input.is_action_pressed("ui_right"):
#		xoff+=0.01
#		print("se puchó")
#		OS.window_position = Vector2(sin(xoff)*get_viewport().size.x,0)


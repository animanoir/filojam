extends TextureRect

var rng = RandomNumberGenerator.new()


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pixel = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		pixel += 0.1
		get_material().set_shader_param("blue_offset",Vector2(rng.randi() % 5,0))
		print("hola")
	if Input.is_action_pressed("ui_left"):
		get_material().set_shader_param("red_offset",Vector2(rng.randi() % 2,0))
		print("adios")		
	if Input.is_action_pressed("ui_down"):
		pixel -= 0.005
		get_material().set_shader_param("pixel", pixel)
	if Input.is_action_pressed("ui_up"):
		pixel += 0.005
		get_material().set_shader_param("pixel", pixel)
	



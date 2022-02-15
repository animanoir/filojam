extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var xoff = 0.0

onready var FondoFractalNode = get_node("FondoFractal")


# Called when the node enters the scene tree for the first time.
func _ready():
	OS.center_window()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	xoff+=0.01
	OS.window_position = Vector2(sin(xoff)*(get_viewport().size.x)+500,0)
	FondoFractalNode.get_material().set_shader_param("iTime", OS.get_ticks_msec() * 0.001)
	


func _on_eye3_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	FondoFractalNode.get_material().set_shader_param("iTime", OS.get_ticks_msec() * 0.1)

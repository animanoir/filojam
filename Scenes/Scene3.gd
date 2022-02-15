extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var FondoFractalNode = get_node("FondoFractal")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	FondoFractalNode.get_material().set_shader_param("iTime", OS.get_ticks_msec() * 0.001)
	


func _on_eye3_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	FondoFractalNode.get_material().set_shader_param("iTime", OS.get_ticks_msec() * 0.1)

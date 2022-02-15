extends CanvasLayer

onready var AnimationPlayerNode = get_node("ColorRect/AnimationPlayer")

# Called when the node enters the scene tree for the first time.
func _ready():
	AnimationPlayerNode.play("FadeIn")



#func _on_AnimationPlayer_animation_finished(anim_name):
#	print("animación finalizada.")
#	queue_free()

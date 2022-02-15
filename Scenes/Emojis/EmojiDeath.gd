extends Node2D

onready var SpriteNode = get_node("Sprite")
var xoff = 0.0
var unixTime


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	SpriteNode.scale.x = sin(xoff)
	xoff+=0.04


func _on_Area2D_body_entered(body):
	OS.alert("Existen percepciones, es decir sistemas en los que esas mismas imágenes están relacionadas a una única imagen entre ellas, se escalonan alrededor suyo sobre planos diferentes, y se transfiguran en su conjunto por modificaciones ligeras de esta imagen central", "Randomset")
	get_tree().change_scene("res://Scenes/AspriteDeath.tscn")


func _on_Area2D_body_exited(body):
	print("Salió del cráneo")

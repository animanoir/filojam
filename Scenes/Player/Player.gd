extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
onready var AnimatedSpriteNode = get_node("AnimatedSprite")

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		print("se movió para la derecha")
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if velocity.x != 0 or velocity.y != 0 :
		$AnimatedSprite.animation = "run"
	# See the note below about boolean assignment.
		$AnimatedSprite.flip_h = velocity.x < 0
	elif velocity.x == 0 or velocity.y == 0:
		$AnimatedSprite.animation = "idle"
	
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

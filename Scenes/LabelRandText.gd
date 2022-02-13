extends Label

var randomTexts = ["Todo", "Irreal", "Desvanece", "Tiempo"]
var rng = RandomNumberGenerator.new()
var secsTimeFromStart
onready var AnimationPlayerNode = get_node("AnimationPlayer")


# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	AnimationPlayerNode.play("dissappear")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	secsTimeFromStart = OS.get_ticks_msec() / 1000
	if(secsTimeFromStart % 2 == 0):
		set_text(randomTexts[rng.randi_range(0,3)])

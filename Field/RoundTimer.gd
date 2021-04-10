extends Timer

signal round_timeout

const TIME_PERIOD = 7

var time = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	if time > TIME_PERIOD:
		emit_signal("round_timeout")
		time = 0

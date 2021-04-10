extends Timer

const TIME_PERIOD = 7

var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += delta
	if time > TIME_PERIOD:
		emit_signal("round_timeout")
		time = 0

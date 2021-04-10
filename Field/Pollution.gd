extends Label

var pollution


# Called when the node enters the scene tree for the first time.
func _ready():
	pollution = 0

func pollution_up():
	pollution = pollution + 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = ("Position: " + str(pollution))
	show()

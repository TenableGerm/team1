extends Label

var pollution

signal end_game

# Called when the node enters the scene tree for the first time.
func _ready():
	pollution = 0

func pollution_up():
	pollution = pollution + 2
	if pollution >= 100:
		emit_signal("end_game")
		print("Here 1")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PollutionBar.value = float(pollution)
	

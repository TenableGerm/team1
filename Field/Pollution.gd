extends Label

var pollution

signal end_game

# Called when the node enters the scene tree for the first time.
func _ready():
	pollution = 0
	connect("end_game", get_parent().get_parent().get_node("DeathScreen"), "game_over")

func pollution_up():
	pollution = pollution + 2
	if pollution >= 100:
		emit_signal("end_game")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PollutionBar.value = float(pollution)
	

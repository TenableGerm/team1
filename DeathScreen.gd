extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$DeathBackground.hide()
	$DeathMessage1.hide()
	$DeathMessage2.hide()
	$ExitButton.hide()

func game_over():
	$DeathBackground.show()
	$DeathMessage1.show()
	$DeathMessage2.show()
	$ExitButton.show()
	get_parent().get_node("Field").queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

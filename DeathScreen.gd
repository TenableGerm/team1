extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$DeathBackground.hide()
	$DeathMessage1.hide()
	$DeathMessage2.hide()
	$ExitButton.hide()

func end_game():
	print("Here 2")
	$DeathBackground.show()
	$DeathMessage1.show()
	$DeathMessage2.show()
	$ExitButton.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

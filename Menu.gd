extends CanvasLayer

signal start

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlayButton_pressed():
	$Background.hide()
	$QuitButton.hide()
	$PlayButton.hide()
	$logo.hide()
	emit_signal("start")


func _on_QuitButton_pressed():
	pass
	#get_tree.quit()

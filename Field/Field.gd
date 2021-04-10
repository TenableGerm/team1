extends CanvasLayer

export (PackedScene) var Path

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

func _on_start():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_EnemyButton_pressed():
	var path = Path.instance()
	add_child(path)

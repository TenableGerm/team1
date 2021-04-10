extends PathFollow2D

export (PackedScene) var Enemy

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_EnemyButton_pressed():
	var mob = Enemy.instance()
	add_child(mob)
	mob.position = get_parent().get_node("PathFollow2D").position

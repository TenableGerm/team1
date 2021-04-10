extends PathFollow2D

export (PackedScene) var Enemy
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_EnemyButton_pressed():
	var mob = Enemy.instance()
	add_child(mob)
	mob.position = get_parent().get_node("PathFollow2D").position

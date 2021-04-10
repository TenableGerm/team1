extends CanvasLayer

export (PackedScene) var Enemy
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

func _on_start():
	var mob = Enemy.instance()
	var direction = $Path2D/PathFollow2D.rotation
	add_child(mob)
	mob.position = $Path2D/PathFollow2D.position
	mob.linear_velocity = Vector2(rand_range(mob.min_speed,mob.max_speed),0)
	mob.rotation = direction
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

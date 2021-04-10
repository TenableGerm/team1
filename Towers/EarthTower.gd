extends Area2D

var oriantation = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var EarthBullet

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):



func shoot():
	var b = EarthBullet.instance()
	var enemy = get_tree().get_nodes_in_group("enemy")
	if enemy.size() > 0:
		var current = enemy[0]
		var minDist = $Fire.global_position.distance_to(enemy[0].global_position)
		for x in enemy:
			if minDist > $Fire.global_position.distance_to(x.global_position):
				minDist = $Fire.global_position.distance_to(x.global_position)
				current = x
		b.rotation = PI + $Fire.global_position.angle_to_point(current.global_position)
		b.position += b.transform.x * 50
		add_child(b)
		b.get_node("AnimatedSprite").flip_h = true
	else:
		pass


func _on_Timer_timeout():
	shoot() # Replace with function body.

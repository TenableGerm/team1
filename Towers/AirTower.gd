extends Area2D

var oriantation = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var AirBullet

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):



func shoot():
	var a = AirBullet.instance()
	var b = AirBullet.instance()
	#b.volocity = Vector2(1,1)
	var enemy = get_tree().get_nodes_in_group("enemy")
	if enemy.size() > 0:
		a.rotation_degrees = 180 + oriantation
		add_child(a)
		a.get_node("AnimatedSprite").flip_h = true
		b.rotation_degrees = oriantation
		oriantation += 10
		oriantation % 360
		add_child(b)
		b.get_node("AnimatedSprite").flip_h = true
	else:
		pass
	#b.transform = $Fire.global_transform


func _on_Timer_timeout():
	shoot() # Replace with function body.

extends Area2D

var oriantation = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var LightningBullet

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):



func shoot():
	var b = LightningBullet.instance()
	var enemy = get_tree().get_nodes_in_group("enemy")
	var mouse = get_viewport().get_mouse_position()
	if enemy.size() > 0:
		b.rotation = PI + $Fire.global_position.angle_to_point(mouse)
		b.position += b.transform.x * 50
		add_child(b)
		b.get_node("AnimatedSprite").flip_h = true
	else:
		pass


func _on_Timer_timeout():
	shoot() # Replace with function body.

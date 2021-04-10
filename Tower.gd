extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var WaterBullet

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):



func shoot():
	var b = WaterBullet.instance()
	add_child(b)
	b.get_node("AnimatedSprite").flip_h = true
	#b.transform = $Fire.global_transform


func _on_Timer_timeout():
	shoot() # Replace with function body.

extends Area2D

var speed = 750

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += transform.x * speed * delta


func _on_WaterBullet_body_entered(body):
	if body.is_in_group("mobs"):
		body.queue_free()
	queue_free()

extends Area2D

export var speed = 750
export var damage = 20
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass


func _on_EarthBullet_body_entered(body):
	if body.is_in_group("mobs"):
		body._enemy_damage(1)
	queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Timer_timeout():
	queue_free() # Replace with function body.

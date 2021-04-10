extends RigidBody2D


export var min_speed = 100
export var max_speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


func _process(delta):
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

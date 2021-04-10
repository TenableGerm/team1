extends RigidBody2D

onready var path_follow = get_parent()

export var min_speed = 50
export var max_speed = 75

var move_direction = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]


func _physics_process(delta):
	MovementLoop(delta)
	
func MovementLoop(delta):
	var prepos = path_follow.get_global_position()
	path_follow.set_offset(path_follow.get_offset() + rand_range(min_speed,max_speed) * delta)
	var pos = path_follow.get_global_position()


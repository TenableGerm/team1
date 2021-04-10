extends RigidBody2D

onready var path_follow = get_parent()

signal damage

export var min_speed = 200
export var max_speed = 400
var speed = 0

const FINISH_Y = 647

var move_direction = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	speed = rand_range(min_speed,max_speed)
	connect("damage",get_parent().get_parent().get_parent().get_node("Pollution"),"pollution_up")


func _physics_process(delta):
	MovementLoop(delta)
	
func MovementLoop(delta):
	var prepos = path_follow.get_global_position()
	path_follow.set_offset(path_follow.get_offset() + speed * delta)
	var pos = path_follow.get_global_position()
	if pos.y > FINISH_Y:
		FinishLine()

func FinishLine():
	emit_signal("damage")
	queue_free()


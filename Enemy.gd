extends RigidBody2D

onready var path_follow = get_parent()

signal damage
signal death

export var max_health = 100
export var min_speed = 25
export var max_speed = 500
var speed = 0
var health = 0

const FINISH_Y = 647

var move_direction = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	speed = rand_range(min_speed,max_speed)
	connect("damage",get_parent().get_parent().get_parent().get_node("Pollution"),"pollution_up")
	connect("death", get_parent().get_parent().get_parent().get_node("MoneyLabel"), "cash_up")
	health = rand_range(5,max_health)
	$AnimatedSprite.scale.x = health / 10
	$AnimatedSprite.scale.y = health / 10


func _physics_process(delta):
	MovementLoop(delta)
	$AnimatedSprite.scale.x = health / 10
	$AnimatedSprite.scale.y = health / 10
	
	
func _enemy_damage(amount):
	health = health - amount

func MovementLoop(delta):
	var prepos = path_follow.get_global_position()
	path_follow.set_offset(path_follow.get_offset() + speed * delta)
	var pos = path_follow.get_global_position()
	if (health < 1):
		Death()
	if pos.y > FINISH_Y:
		FinishLine()

func FinishLine():
	emit_signal("damage")
	queue_free()

func Death():
	health = 0
	get_parent().get_node("DeathSound").play()
	emit_signal("death")
	queue_free()

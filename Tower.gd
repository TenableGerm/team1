extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var WaterBullet

# Called when the node enters the scene tree for the first time.
func _ready():
	pass




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#shoot()
	pass



func shoot():
	var b = WaterBullet.instance()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform

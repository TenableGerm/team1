extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		var mouse = get_viewport().get_mouse_position()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):


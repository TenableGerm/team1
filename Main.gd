extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Menu.connect("start",$Field,"_on_start")

	

func _on_ExitButton_pressed():
	get_tree().quit()

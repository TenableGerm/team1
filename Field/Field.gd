extends CanvasLayer

export (PackedScene) var Path
export (PackedScene) var Tower  
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

func _on_start():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		var mouse = get_viewport().get_mouse_position()
		var tower = Tower.instance()
		tower.get_node("TowerAnim").play($Shop.selected)
		tower.position = mouse
		#tower.get_node("Fire").position = mouse
		add_child(tower)
		
func _on_EnemyButton_pressed():
	var path = Path.instance()
	add_child(path)

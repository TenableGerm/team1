extends CanvasLayer

export (PackedScene) var Path
export (PackedScene) var Tower  

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


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

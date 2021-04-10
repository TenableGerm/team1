extends CanvasLayer

export (PackedScene) var Path
export (PackedScene) var Tower  
export (PackedScene) var FireTower 
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		var mouse = get_viewport().get_mouse_position()
		if $Shop.selected == "Blue":
			var tower = Tower.instance()
			tower.get_node("TowerAnim").play($Shop.selected)
			tower.position = mouse
			#tower.get_node("Fire").position = mouse
			add_child(tower)
		if $Shop.selected == "Red":
			var tower = FireTower.instance()
			tower.get_node("TowerAnim").play($Shop.selected)
			tower.position = mouse
			#tower.get_node("Fire").position = mouse
			add_child(tower)


func _on_EnemyButton_pressed():
	var path = Path.instance()
	add_child(path)

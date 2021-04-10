extends CanvasLayer

export (PackedScene) var Path
export (PackedScene) var Tower  

const grid_width =22
const grid_hight =20
var started = false
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


func _input(event):
	if started :
		if event is InputEventMouseButton and event.is_pressed():
			var mouse = get_viewport().get_mouse_position()
			var map_cords = $TileMap.world_to_map(mouse)
			#if (0 < map_cords.x  && map_cords.x < grid_width
			# && 0 < map_cords.y  && map_cords.y < grid_hight ):
			if 0 == $TileMap.get_cellv(map_cords):
				var tower = Tower.instance()
				tower.get_node("TowerAnim").play($Shop.selected)
				tower.position = mouse
				add_child(tower)


func _on_EnemyButton_pressed():
	var path = Path.instance()
	add_child(path)


func _on_Menu_start():
	started = true
	pass # Replace with function body.

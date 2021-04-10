extends CanvasLayer

export (PackedScene) var Path
export (PackedScene) var Tower  

export (PackedScene) var FireTower 
export (PackedScene) var AirTower 


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
			if 0 == $TileMap.get_cellv(map_cords):
				var tower_type = FireTower
				if $Shop.selected == "Red":
					tower_type = FireTower
				if $Shop.selected == "Blue":
					tower_type = Tower
				if $Shop.selected == "Grey":
					tower_type = AirTower
				
				var tower = tower_type.instance()
				tower.position = mouse
				add_child(tower)


func _on_EnemyButton_pressed():
	new_enemies(rand_range(10,50))

func new_enemies(num):
	for i in range(num):
		var path = Path.instance()
		add_child(path)


func _on_Menu_start():
	started = true
	pass # Replace with function body.


func _on_QuitButton_pressed():
	get_tree().quit()

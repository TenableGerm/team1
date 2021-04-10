extends CanvasLayer

export (PackedScene) var Path
export (PackedScene) var Tower  
export (PackedScene) var FireTower 
export (PackedScene) var AirTower 
export (PackedScene) var EarthTower 
export (PackedScene) var LightningTower 


const grid_width =22
const grid_hight =20
var started = false

const FIRE_COST = 20
const WATER_COST = 15
const LIGHTNING_COST = 22
const EARTH_COST = 8
const AIR_COST = 100

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
				var tower_cost
				if $Shop.selected == "Des":
					tower_type = 0
				if $Shop.selected == "Red":
					tower_cost = FIRE_COST
					tower_type = FireTower
				if $Shop.selected == "Blue":
					tower_cost =  WATER_COST
					tower_type = Tower
				if $Shop.selected == "Grey":
					tower_cost =  AIR_COST
					tower_type = AirTower
				if $Shop.selected == "Yellow":
					tower_cost =  LIGHTNING_COST
					tower_type = LightningTower
				if $Shop.selected == "Brown":
					tower_cost =  EARTH_COST
					tower_type = EarthTower
				if $Shop.selected != "Des" and get_node("MoneyLabel").cash >= tower_cost:
					get_node("MoneyLabel").cash = get_node("MoneyLabel").cash - tower_cost
					var tower = tower_type.instance()
					tower.position = mouse
					add_child(tower)

func _on_EnemyButton_pressed():
	new_enemies(rand_range(10,50))

func new_enemies(num):
	for _i in range(num):
		var path = Path.instance()
		add_child(path)


func _on_Menu_start():
	started = true
	pass # Replace with function body.


func _on_QuitButton_pressed():
	get_tree().quit()

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
var round_num = 0

const FIRE_COST = 200
const WATER_COST = 130
const LIGHTNING_COST = 90
const EARTH_COST = 75
const AIR_COST = 55

const TILE_TYPE = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	$Pollution.connect("end_game", get_parent().get_node("DeathScreen"), "game_over")
	


func _input(event):
	if started :
		if event is InputEventMouseButton and event.is_pressed():
			var mouse = get_viewport().get_mouse_position()
			var map_cords = $FeaturesTileMap.world_to_map(mouse)
			print(str($Pollution.pollution))
			if TILE_TYPE == $FeaturesTileMap.get_cellv(map_cords):
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
	$RoundTimer.start()
	$EnemyButton.Disappear()
	new_round()
	new_enemies(rand_range(1,10))
	

func new_round():
	round_num = round_num + 1
	$RoundLabel.text = "Round:" + String(round_num)
	$RoundLabel.show()

func new_enemies(num):
	for i in range(num*round_num*round_num):
		var path = Path.instance()
		add_child(path)


func _on_Menu_start():
	started = true
	pass # Replace with function body.


func _on_QuitButton_pressed():
	get_tree().quit()

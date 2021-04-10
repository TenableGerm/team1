extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var selected = "Blue"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tower1_pressed():
	$ShopInfo/Name.text = "Water Tower"
	$ShopInfo/Description.text = "Tower1 description"
	$ShopInfo/Cost.text = "Cost: " + String(get_parent().WATER_COST)
	$ShopInfo/Tower.play("Blue")
	selected = "Blue"
	


func _on_Tower2_pressed():
	$ShopInfo/Name.text = "Earth Tower"
	$ShopInfo/Description.text = "Tower2 description"
	$ShopInfo/Cost.text = "Cost: " + String(get_parent().EARTH_COST)
	$ShopInfo/Tower.play("Brown")
	selected = "Brown"

func _on_Tower3_pressed():
	$ShopInfo/Name.text = "Lightning Tower"
	$ShopInfo/Description.text = "Tower3 description"
	$ShopInfo/Cost.text = "Cost: " + String(get_parent().LIGHTNING_COST)
	$ShopInfo/Tower.play("Yellow")
	selected = "Yellow"


func _on_Tower4_pressed():
	$ShopInfo/Name.text = "Air Tower"
	$ShopInfo/Description.text = "Tower4 description"
	$ShopInfo/Cost.text = "Cost: " + String(get_parent().AIR_COST)
	$ShopInfo/Tower.play("Grey")
	selected = "Grey"


func _on_Tower5_pressed():
	$ShopInfo/Name.text = "Fire Tower"
	$ShopInfo/Description.text = "Tower5 description"
	$ShopInfo/Cost.text = "Cost: " + String(get_parent().FIRE_COST)
	$ShopInfo/Tower.play("Red")
	selected = "Red"


func _on_Button_pressed():
	$ShopInfo/Name.text = ""
	$ShopInfo/Description.text = ""
	$ShopInfo/Cost.text = ""
	$ShopInfo/Tower.play("PlaceHold")
	selected = "Des"

extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tower1_pressed():
	$ShopInfo/Name.text = "Tower1 name"
	$ShopInfo/Description.text = "Tower1 description"
	$ShopInfo/Cost.text = "Tower1 cost"


func _on_Tower2_pressed():
	$ShopInfo/Name.text = "Tower2 name"
	$ShopInfo/Description.text = "Tower2 description"
	$ShopInfo/Cost.text = "Tower2 cost"


func _on_Tower3_pressed():
	$ShopInfo/Name.text = "Tower3 name"
	$ShopInfo/Description.text = "Tower3 description"
	$ShopInfo/Cost.text = "Tower3 cost"


func _on_Tower4_pressed():
	$ShopInfo/Name.text = "Tower4 name"
	$ShopInfo/Description.text = "Tower4 description"
	$ShopInfo/Cost.text = "Tower4 cost"


func _on_Tower5_pressed():
	$ShopInfo/Name.text = "Tower5 name"
	$ShopInfo/Description.text = "Tower5 description"
	$ShopInfo/Cost.text = "Tower5 cost"

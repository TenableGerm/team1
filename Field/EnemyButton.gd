extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func Disappear():
	self.hide()

func _on_RoundTimer_timeout():
	self.show()
	get_parent().get_node("MoneyLabel").cash = get_parent().get_node("MoneyLabel").cash + get_parent().round_num * 10
	get_parent().money_up();
	get_parent().get_node("RoundTimer").stop()

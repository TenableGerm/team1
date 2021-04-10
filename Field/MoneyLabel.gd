extends Label


var cash

# Called when the node enters the scene tree for the first time.
func _ready():
	cash = 110
	
func cash_up():
	cash = cash + 8
	
func _process(delta):
	text = "Cash: " + str(cash)
	show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

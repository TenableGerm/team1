extends Label


var cash

# Called when the node enters the scene tree for the first time.
func _ready():
	cash = 110
	
func cash_up():
	cash = cash + 8
	
func _process(delta):
	set_text("Cash: " + str(cash))
	show()


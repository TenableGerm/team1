extends Label


var cash

# Called when the node enters the scene tree for the first time.
func _ready():
	cash = 100
	
func cash_up():
	cash = cash + 2
	
func _process(delta):
	set_text("Cash: " + str(cash))
	show()


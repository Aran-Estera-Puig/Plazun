extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$coins.text = str(Global.coins)
	$fruits.text = str(Global.fruits) + "/" + str(Global.max_fruits)
	$gems.text = str(Global.gems)
	if Global.button_down == "coins":
		position = Vector2(360 , 640)
	elif Global.button_down == "fruits":
		position = Vector2(1320 , 640)
	elif Global.button_down == "chests":
		position = Vector2(-600 , 640)
	elif Global.button_down == "gems":
		position = Vector2(2280 , 640)
	elif Global.button_down == "extras":
		position = Vector2(3240, 640)

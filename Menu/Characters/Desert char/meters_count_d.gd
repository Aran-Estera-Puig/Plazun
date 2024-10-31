extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.total_meters_desert < 1000:
		text = "Progress: " + str(Global.total_meters_desert) + "/1000"
	elif Global.total_meters_desert < 3000:
		text = "Progress: " + str(Global.total_meters_desert) + "/3000"
	elif Global.total_meters_desert < 7000:
		text = "Progress: " + str(Global.total_meters_desert) + "/7000"
	elif Global.total_meters_desert < 15000:
		text = "Progress: " + str(Global.total_meters_desert) + "/15000"
	elif Global.total_meters_desert < 30000:
		text = "Progress: " + str(Global.total_meters_desert) + "/30000"
	else:
		text = "Completed!"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

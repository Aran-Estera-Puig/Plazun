extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.total_poins_jungle < 100:
		text = "Progress: " + str(Global.total_poins_jungle) + "/100"
	elif Global.total_poins_jungle < 300:
		text = "Progress: " + str(Global.total_poins_jungle) + "/300"
	elif Global.total_poins_jungle < 700:
		text = "Progress: " + str(Global.total_poins_jungle) + "/700"
	elif Global.total_poins_jungle < 1500:
		text = "Progress: " + str(Global.total_poins_jungle) + "/1500"
	elif Global.total_poins_jungle < 3000:
		text = "Progress: " + str(Global.total_poins_jungle) + "/3000"
	else:
		text = "Completed!"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

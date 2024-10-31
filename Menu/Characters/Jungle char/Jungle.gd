extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.jungle_charakters["Pongo(jungle)"] == false:
		$"Pongo(jungle)".modulate = 000255
		$"?".visible = true
		$"Pongo(jungle)/Button".visible = false
	else:
		$"?".visible = false
		$"Pongo(jungle)/Button".visible = true
		
	if Global.jungle_charakters["AnodorhynchusHyacinthinus(jungle)"] == false:
		$"AnodorhynchusHyacinthinus(jungle)".modulate = 000255
		$"?2".visible = true
		$"AnodorhynchusHyacinthinus(jungle)/Button".visible = false
	else:
		$"?2".visible = false
		$"AnodorhynchusHyacinthinus(jungle)/Button".visible = true

	if Global.jungle_charakters["PantheraOnca(jungle)"] == false:
		$"PantheraOnca(jungle)".modulate = 000255
		$"?3".visible = true
		$"PantheraOnca(jungle)/Button".visible = false
	else:
		$"?3".visible = false
		$"PantheraOnca(jungle)/Button".visible = true

	if Global.jungle_charakters["AmbystomaMexicanum(jungle)"] == false:
		$"AmbystomaMexicanum(jungle)".modulate = 000255
		$"?4".visible = true
		$"AmbystomaMexicanum(jungle)/Button".visible = false
	else:
		$"?4".visible = false
		$"AmbystomaMexicanum(jungle)/Button".visible = true

	if Global.jungle_charakters["Folivora(jungle)"] == false:
		$"Folivora(jungle)".modulate = 000255
		$"?5".visible = true
		$"Folivora(jungle)/Button".visible = false
	else:
		$"?5".visible = false
		$"Folivora(jungle)/Button".visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

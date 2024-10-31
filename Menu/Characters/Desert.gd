extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.desert_charakters["Rhinocerotidae(desert)"] == false:
		$"Rhinocerotidae(desert)".modulate = 000255
		$"?".visible = true
		$"Rhinocerotidae(desert)/Button".visible = false
	else:
		$"?".visible = false
		$"Rhinocerotidae(desert)/Button".visible = true
		
	if Global.desert_charakters["AcinonyxJubatus(desert)"] == false:
		$"AcinonyxJubatus(desert)".modulate = 000255
		$"?2".visible = true
		$"AcinonyxJubatus(desert)/Button".visible = false
	else:
		$"?2".visible = false
		$"AcinonyxJubatus(desert)/Button".visible = true

	if Global.desert_charakters["EquusZebra(desert)"] == false:
		$"EquusZebra(desert)".modulate = 000255
		$"?3".visible = true
		$"EquusZebra(desert)/Button".visible = false
	else:
		$"?3".visible = false
		$"EquusZebra(desert)/Button".visible = true

	if Global.desert_charakters["PantheraLeo(desert)"] == false:
		$"PantheraLeo(desert)".modulate = 000255
		$"?4".visible = true
		$"PantheraLeo(desert)/Button".visible = false
	else:
		$"?4".visible = false
		$"PantheraLeo(desert)/Button".visible = true
	if Global.desert_charakters["LycaonPictus(desert)"] == false:
		$"LycaonPictus(desert)".modulate = 000255
		$"?5".visible = true
		$"LycaonPictus(desert)/Button".visible = false
	else:
		$"?5".visible = false
		$"LycaonPictus(desert)/Button".visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

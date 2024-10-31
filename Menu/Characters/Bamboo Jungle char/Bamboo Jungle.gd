extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.bamboo_jungle_charakters["TapirusIndicus(bambooJungle)"] == false:
		$"TapirusIndicus(bambooJungle)".modulate = 000255
		$"?".visible = true
		$"TapirusIndicus(bambooJungle)/Button".visible = false
	else:
		$"?".visible = false
		$"TapirusIndicus(bambooJungle)".visible = true
		
	if Global.bamboo_jungle_charakters["PantheraTigrisTigris(bambooJungle)"] == false:
		$"PantheraTigrisTigris(bambooJungle)".modulate = 000255
		$"?2".visible = true
		$"PantheraTigrisTigris(bambooJungle)/Button".visible = false
	else:
		$"?2".visible = false
		$"PantheraTigrisTigris(bambooJungle)/Button".visible = true

	if Global.bamboo_jungle_charakters["AilurusFulgens(bambooJungle)"] == false:
		$"AilurusFulgens(bambooJungle)".modulate = 000255
		$"?3".visible = true
		$"AilurusFulgens(bambooJungle)/Button".visible = false
	else:
		$"?3".visible = false
		$"AilurusFulgens(bambooJungle)/Button".visible = true

	if Global.bamboo_jungle_charakters["ElephasMaximus(bambooJungle)"] == false:
		$"ElephasMaximus(bambooJungle)".modulate = 000255
		$"?4".visible = true
		$"ElephasMaximus(bambooJungle)/Button".visible = false
	else:
		$"?4".visible = false
		$"ElephasMaximus(bambooJungle)/Button".visible = true

	if Global.bamboo_jungle_charakters["PongoPygmaeus(bambooJungle)"] == false:
		$"PongoPygmaeus(bambooJungle)".modulate = 000255
		$"?5".visible = true
		$"PongoPygmaeus(bambooJungle)/Button".visible = false
	else:
		$"?5".visible = false
		$"PongoPygmaeus(bambooJungle)/Button".visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

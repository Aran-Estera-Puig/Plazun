extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.glacier_charakters["VulpesLagopus(glacier)"] == false:
		$"VulpesLagopus(glacier)".modulate = 000255
		$"?".visible = true
		$"VulpesLagopus(glacier)/Button".visible = false
	else:
		$"?".visible = false
		$"VulpesLagopus(glacier)".visible = true
		
	if Global.glacier_charakters["UrsusMaritimus(glacier)"] == false:
		$"UrsusMaritimus(glacier)".modulate = 000255
		$"?2".visible = true
		$"UrsusMaritimus(glacier)/Button".visible = false
	else:
		$"?2".visible = false
		$"UrsusMaritimus(glacier)/Button".visible = true

	if Global.glacier_charakters["HydrurgaLeptonyx(glacier)"] == false:
		$"HydrurgaLeptonyx(glacier)".modulate = 000255
		$"?3".visible = true
		$"HydrurgaLeptonyx(glacier)/Button".visible = false
	else:
		$"?3".visible = false
		$"HydrurgaLeptonyx(glacier)/Button".visible = true

	if Global.glacier_charakters["EmperorPenguin(glacier)"] == false:
		$"EmperorPenguin(glacier)".modulate = 000255
		$"?4".visible = true
		$"EmperorPenguin(glacier)/Button".visible = false
	else:
		$"?4".visible = false
		$"EmperorPenguin(glacier)/Button".visible = true

	if Global.glacier_charakters["OdobenusRosmarus(glacier)"] == false:
		$"OdobenusRosmarus(glacier)".modulate = 000255
		$"?5".visible = true
		$"OdobenusRosmarus(glacier)/Button".visible = false
	else:
		$"?5".visible = false
		$"OdobenusRosmarus(glacier)/Button".visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

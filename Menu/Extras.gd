extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.extra == "blue cap":
		$BlueCap.visible = true
	elif Global.extra == "bow":
		$Bow.visible = true
	elif Global.extra == "Caesar's crown":
		$"Caesar'sCrown".visible = true
	elif Global.extra == "Cap copter":
		$CapCopter.visible = true
	elif Global.extra == "Chef Hat":
		$ChefHat.visible = true
	elif Global.extra == "Crown":
		$Crown.visible = true
	elif Global.extra == "Diadem":
		$Diadem.visible = true
	elif Global.extra == "English hat":
		$EnglishHat.visible = true
	elif Global.extra == "green cap":
		$GreenCap.visible = true
	elif Global.extra == "Headphones":
		$Headphones.visible = true
	elif Global.extra == "Hearts Hat":
		$HeartsHat.visible = true
	elif Global.extra == "magician hat":
		$MagicianHat.visible = true
	elif Global.extra == "Military Helmet":
		$MilitaryHelmet.visible = true
	elif Global.extra == "motorcycle helmet":
		$MotorcycleHelmet.visible = true
	elif Global.extra == "Ninja headband":
		$NinjaHeadband.visible = true
	elif Global.extra == "panama hat":
		$PanamaHat.visible = true
	elif Global.extra == "pirate hat":
		$PirateHat.visible = true
	elif Global.extra == "Queen's Hat":
		$"Queen'sHat".visible = true
	elif Global.extra == "rabbit hat":
		$RabbitHat.visible = true
	elif Global.extra == "red cap":
		$RedCap.visible = true
	elif Global.extra == "Roses":
		$Roses.visible = true
	elif Global.extra == "Running Cap":
		$RunningCap.visible = true
	elif Global.extra == "santa hat":
		$SantaHat.visible = true
	elif Global.extra == "Straw hat":
		$StrawHat.visible = true
	elif Global.extra == "Swimming cap":
		$SwimmingCap.visible = true
	elif Global.extra == "Viking Helmet":
		$VikingHelmet.visible = true
	elif Global.extra == "Warrior Helmet":
		$WarriorHelmet.visible = true
	elif Global.extra == "Witch Hat":
		$WitchHat.visible = true
	elif Global.extra == "Worker helmet":
		$WorkerHelmet.visible = true
	elif Global.extra == "yellow cap":
		$YellowCap.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.selected_character in ["AcinonyxJubatus" , "EquusZebra" , "PantheraLeo" , "LycaonPictus" , "Rhinocerotidae"]:
			Global.biome = "Desert"
	elif Global.selected_character in ["Pongo" , "AnodorhynchusHyacinthinus" , "PantheraOnca" , "AmbystomaMexicanum" , "Folivora"]:
		Global.biome = "Jungle"
	elif Global.selected_character in ["BlueWhale" , "CarcharodonCarcharias" , "CheloniaMydas" , "Delphinidae" , "RhinocodonTypus"]:
		Global.biome = "Ocean"
	elif Global.selected_character in ["AilurusFulgens" , "ElephasMaximus" , "PantheraTigrisTigris" , "PongoPygmaeus" , "TapirusIndicus"]:
		Global.biome = "Bamboo Jungle"
	elif Global.selected_character in ["EmperorPenguin" , "HydrurgaLeptonyx" , "OdobenusRosmarus" , "UrsusMaritimus" , "VulpesLagopus"]:
		Global.biome = "Glacer"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_up():
	Global.gameplay_info = true
	if Global.biome == "Desert":
		$Desert.visible = true
		$Jungle.visible = false
		$Ocean.visible = false
		$"Bamboo Jungle".visible = false
		$Glacier.visible = false
		$exit_info.visible = true
	elif Global.biome == "Jungle":
		$Desert.visible = false
		$Jungle.visible = true
		$Ocean.visible = false
		$"Bamboo Jungle".visible = false
		$Glacier.visible = false
		$exit_info.visible = true
	elif Global.biome == "Ocean":
		$Desert.visible = false
		$Jungle.visible = false
		$Ocean.visible = true
		$"Bamboo Jungle".visible = false
		$Glacier.visible = false
		$exit_info.visible = true
	elif Global.biome == "Bamboo Jungle":
		$Desert.visible = false
		$Jungle.visible = false
		$Ocean.visible = false
		$"Bamboo Jungle".visible = true
		$Glacier.visible = false
		$exit_info.visible = true
	elif Global.biome == "Glacer":
		$Desert.visible = false
		$Jungle.visible = false
		$Ocean.visible = false
		$"Bamboo Jungle".visible = false
		$Glacier.visible = true
		$exit_info.visible = true


func _on_exit_info_button_up():
	$Desert.visible = false
	$Jungle.visible = false
	$Ocean.visible = false
	$"Bamboo Jungle".visible = false
	$Glacier.visible = false
	$exit_info.visible = false

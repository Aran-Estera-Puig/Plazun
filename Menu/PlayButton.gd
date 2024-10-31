extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_up():
	if Global.fruits <= 0:
		Global.fruits = 0
	else:
		Global.fruits -= 1
		if Global.selected_character in ["AcinonyxJubatus" , "EquusZebra" , "PantheraLeo" , "LycaonPictus" , "Rhinocerotidae"]:
			get_tree().change_scene_to_file("res://Scenes/in_game/Desert/desert game.tscn")
		elif Global.selected_character in ["Pongo" , "AnodorhynchusHyacinthinus" , "PantheraOnca" , "AmbystomaMexicanum" , "Folivora"]:
			get_tree().change_scene_to_file("res://Scenes/in_game/Jungle/jungle_game.tscn")
		elif Global.selected_character in ["BlueWhale" , "CarcharodonCarcharias" , "CheloniaMydas" , "Delphinidae" , "RhinocodonTypus"]:
			get_tree().change_scene_to_file("res://Scenes/in_game/Ocean/ocean_game.tscn")
		elif Global.selected_character in ["AilurusFulgens" , "ElephasMaximus" , "PantheraTigrisTigris" , "PongoPygmaeus" , "TapirusIndicus"]:
			get_tree().change_scene_to_file("res://Scenes/in_game/Bamboo Jungle/bamboo jungle game.tscn")
		elif Global.selected_character in ["EmperorPenguin" , "HydrurgaLeptonyx" , "OdobenusRosmarus" , "UrsusMaritimus" , "VulpesLagopus"]:
			get_tree().change_scene_to_file("res://Scenes/in_game/Glacier/glacier_game.tscn")

extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down():
	Global.desert_charakters = {"Rhinocerotidae(desert)":true , "LycaonPictus(desert)":true , "EquusZebra(desert)":true , "AcinonyxJubatus(desert)":true , "PantheraLeo(desert)":true}
	Global.jungle_charakters = {"Pongo(jungle)":true , "AnodorhynchusHyacinthinus(jungle)":true , "PantheraOnca(jungle)":true , "AmbystomaMexicanum(jungle)":true , "Folivora(jungle)":true}
	Global.ocean_charakters = {"BlueWhale(ocean)":true , "CarcharodonCarcharias(ocean)":true , "CheloniaMydas(ocean)":true , "Delphinidae(ocean)":true , "RhinocodonTypus(ocean)":true}
	Global.bamboo_jungle_charakters = {"AilurusFulgens(bambooJungle)":true , "ElephasMaximus(bambooJungle)":true , "PantheraTigrisTigris(bambooJungle)":true , "PongoPygmaeus(bambooJungle)":true , "TapirusIndicus(bambooJungle)":true}
	Global.glacier_charakters = {"EmperorPenguin(glacier)":true , "HydrurgaLeptonyx(glacier)":true , "OdobenusRosmarus(glacier)":true , "UrsusMaritimus(glacier)":true , "VulpesLagopus(glacier)":true}
	Global.coins = 10000000000
	Global.max_fruits = 100
	Global.fruits = 10
	Global.gems = 10000

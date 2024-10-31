extends Node2D


var menu_music_timer = 0
var music_volumen = 5
var sounds_volumen = 5

var joystick_pos = Vector2.ZERO

var biome = "Desert"

var selected_character = "Rhinocerotidae"

var desert_charakters = {"Rhinocerotidae(desert)":true , "LycaonPictus(desert)":false , "EquusZebra(desert)":false , "AcinonyxJubatus(desert)":false , "PantheraLeo(desert)":false}
var jungle_charakters = {"Pongo(jungle)":false , "AnodorhynchusHyacinthinus(jungle)":false , "PantheraOnca(jungle)":false , "AmbystomaMexicanum(jungle)":false , "Folivora(jungle)":false}
var ocean_charakters = {"BlueWhale(ocean)":false , "CarcharodonCarcharias(ocean)":false , "CheloniaMydas(ocean)":false , "Delphinidae(ocean)":false , "RhinocodonTypus(ocean)":false}
var bamboo_jungle_charakters = {"AilurusFulgens(bambooJungle)":false , "ElephasMaximus(bambooJungle)":false , "PantheraTigrisTigris(bambooJungle)":false , "PongoPygmaeus(bambooJungle)":false , "TapirusIndicus(bambooJungle)":false}
var glacier_charakters = {"EmperorPenguin(glacier)":false , "HydrurgaLeptonyx(glacier)":false , "OdobenusRosmarus(glacier)":false , "UrsusMaritimus(glacier)":false , "VulpesLagopus(glacier)":false}


var max_desert = 0
var total_meters_desert = 0

var max_jungle = 0
var total_poins_jungle = 0

var  max_ocean = 0
var total_point_ocean = 0

var  max_bamboo_jungle = 0
var total_points_bamboo_jungle = 0

var  max_glacier = 0
var total_points_glacier = 0

var max_coins = 1000000
var max_fruits = 10

var gameplay_info = false

#SHOP
var extra = ""

var button_down = "chests"
var buying = false

var item = ""

var coins = 0
var gems = 0
var fruits = 10

var fragments1 = {"blue cap":0 , "bow":0 , "Caesar's crown":0 , "Cap copter":0 , "Chef Hat":0 , "Crown":0}
var fragments2 = {"Diadem":0 , "English hat":0 , "green cap":0 , "Headphones":0 , "Hearts Hat":0 , "magician hat":0}
var fragments3 = {"Military Helmet":0 , "motorcycle helmet":0 , "Ninja headband":0 , "panama hat":0 , "pirate hat":0 , "Queen's Hat":0}
var fragments4 = {"rabbit hat":0 , "red cap":0 , "Roses":0 , "Running Cap":0 , "santa hat":0 , "Straw hat":0}
var fragments5 = {"Swimming cap":0 , "Viking Helmet":0 , "Warrior Helmet":0 , "Witch Hat":0 , "Worker helmet":0 , "yellow cap":0}
var page = 1

#In Game

var live_count = 600
var in_game_coins = 0
var in_game_points = 0
var in_game_fruits = 0
var in_trap = false

var player_position = Vector2.ZERO


#ABILITYS DESERT
var ryno_ability = false
var LycaonPictus = false
var EquusZebra = false
var AcinonyxJubatus = false
var PantheraLeo = false

#ABILITYS JUNGLE
var Pongo = false
var pongo_count = 1
var AnodorhynchusHyacinthinus = false
var PantheraOnca = false
var AmbystomaMexicanum = false
var Folivora = false

#ABILITYS OCEAN
var Delphinidae = false
var BlueWhale = false
var RhinocodonTypus = false
var CheloniaMydas = false
var CarcharodonCarcharias = false
var extra_coins = 0

#ABILITYS BAMBOO JUNGLE
var TapirusIndicus = false
var PantheraTigrisTigris = false
var AilurusFulgens = false
var ElephasMaximus = false
var PongoPygmaeus = false

#ABILITYS GLACIER
var VulpesLagopus = false
var UrsusMaritimus = false
var OdobenusRosmarus = false
var HydrurgaLeptonyx = false
var EmperorPenguin = false

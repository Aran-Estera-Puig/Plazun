extends Control
##### Interestial (FullScreen) ####
const unit_id_intertestial = "ca-app-pub-7497171488062644~4941861839"
var interstital_ad : InterstitialAd
var interstital_ad_load_callback := InterstitialAdLoadCallback.new()
var full_screen_content_callback := FullScreenContentCallback.new()

##### Banner ####
const  unit_id_banner = "ca-app-pub-7497171488062644/4911337592"

var ad_view := AdView.new(unit_id_banner, AdSize.BANNER, AdPosition.Values.BOTTOM)
var ad_view2 := AdView.new(unit_id_banner, AdSize.BANNER, AdPosition.Values.TOP)
var ad_listener := AdListener.new()
var ad_listener2 := AdListener.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	$"music timer".start()
	$"menu music".play(Global.menu_music_timer)
	if Global.music_volumen == 0:
		$"menu music".set_volume_db((Global.music_volumen -10) * 10000)
	else:
		$"menu music".set_volume_db((Global.music_volumen -10) * 3)
	
	loadBannerAd()
	loadBannerAd2()
	ad_listener.on_ad_loaded = on_banner_loaded
	ad_listener2.on_ad_loaded = on_banner_loaded2
	
	#Reset variables
	Global.joystick_pos = Vector2.ZERO
	Global.in_game_coins = 0
	Global.in_game_points = 0
	Global.live_count = 600
	Global.in_game_fruits = 0
	
	#Shop
	Global.button_down = "chests"
	Global.buying = false
	Global.item = ""
	
	#Reset Abilitys
	Global.ryno_ability = false
	Global.LycaonPictus = false
	Global.EquusZebra = false
	Global.AcinonyxJubatus = false
	Global.PantheraLeo = false

	Global.Pongo = false
	Global.pongo_count = 1
	Global.AnodorhynchusHyacinthinus = false
	Global.PantheraOnca = false
	Global.AmbystomaMexicanum = false
	Global.Folivora = false
	
	Global.Delphinidae = false
	Global.BlueWhale = false
	Global.RhinocodonTypus = false
	Global.CheloniaMydas = false
	Global.CarcharodonCarcharias = false
	
	if Global.total_meters_desert >= 1000:
		Global.desert_charakters["LycaonPictus(desert)"] = true
	if Global.total_meters_desert >= 3000:
		Global.desert_charakters["EquusZebra(desert)"] = true
	if Global.total_meters_desert >= 7000:
		Global.desert_charakters["AcinonyxJubatus(desert)"] = true
	if Global.total_meters_desert >= 15000:
		Global.desert_charakters["PantheraLeo(desert)"] = true
	if Global.total_meters_desert >= 30000:
		Global.jungle_charakters["Pongo(jungle)"] = true
	
	if Global.total_poins_jungle >= 100:
		Global.jungle_charakters["AnodorhynchusHyacinthinus(jungle)"] = true
	if Global.total_poins_jungle >= 300:
		Global.jungle_charakters["PantheraOnca(jungle)"] = true
	if Global.total_poins_jungle >= 700:
		Global.jungle_charakters["AmbystomaMexicanum(jungle)"] = true
	if Global.total_poins_jungle >= 1500:
		Global.jungle_charakters["Folivora(jungle)"] = true
	if Global.total_poins_jungle >= 3000:
		Global.ocean_charakters["Delphinidae(ocean)"] = true
	
	if Global.total_point_ocean >= 250:
		Global.ocean_charakters["BlueWhale(ocean)"] = true
	if Global.total_point_ocean >= 750:
		Global.ocean_charakters["RhinocodonTypus(ocean)"] = true
	if Global.total_point_ocean >= 1750:
		Global.ocean_charakters["CheloniaMydas(ocean)"] = true
	if Global.total_point_ocean >= 3750:
		Global.ocean_charakters["CarcharodonCarcharias(ocean)"] = true
	if Global.total_point_ocean >= 6750:
		Global.bamboo_jungle_charakters["TapirusIndicus(bambooJungle)"] = true
	
	if Global.total_point_ocean >= 100:
		Global.bamboo_jungle_charakters["PantheraTigrisTigris(bambooJungle)"] = true
	if Global.total_point_ocean >= 300:
		Global.bamboo_jungle_charakters["AilurusFulgens(bambooJungle)"] = true
	if Global.total_point_ocean >= 700:
		Global.bamboo_jungle_charakters["ElephasMaximus(bambooJungle)"] = true
	if Global.total_point_ocean >= 1500:
		Global.bamboo_jungle_charakters["PongoPygmaeus(bambooJungle)"] = true
	if Global.total_point_ocean >= 3000:
		Global.glacier_charakters["VulpesLagopus(glacier)"] = true
	
	if Global.total_points_glacier >= 500:
		Global.glacier_charakters["UrsusMaritimus(glacier)"] = true
	if Global.total_points_glacier >= 1500:
		Global.glacier_charakters["HydrurgaLeptonyx(glacier)"] = true
	if Global.total_points_glacier >= 3500:
		Global.glacier_charakters["EmperorPenguin(glacier)"] = true
	if Global.total_points_glacier >= 7500:
		Global.glacier_charakters["OdobenusRosmarus(glacier)"] = true
	


func loadBannerAd():
	if !ad_view:
		ad_view = AdView.new(unit_id_banner , AdSize.BANNER , AdPosition.Values.BOTTOM)
	ad_view.load_ad(AdRequest.new())
func loadBannerAd2():
	if !ad_view2:
		ad_view2 = AdView.new(unit_id_banner , AdSize.BANNER , AdPosition.Values.TOP)
	ad_view2.load_ad(AdRequest.new())

func destroyBanner():
	if ad_view:
		ad_view.destroy()
		ad_view = null
	if ad_view2:
		ad_view2.destroy()
		ad_view2 = null

func on_banner_loaded():
	ad_view.show()
func on_banner_loaded2():
	ad_view2.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_menu_music_finished():
	Global.menu_music_timer = 0
	$"music timer".stop()
	$"music timer".start()
	$"menu music".play()


func _on_music_timer_timeout():
	Global.menu_music_timer += 0.05

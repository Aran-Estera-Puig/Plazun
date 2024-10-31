extends Node2D

var time = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$"menu music".play()
	if Global.music_volumen == 0:
		$"menu music".set_volume_db((Global.music_volumen -10) * 10000)
	else:
		$"menu music".set_volume_db((Global.music_volumen -10) * 3)
	
	Global.in_game_coins = 0
	Global.in_game_points = 0
	Global.in_game_fruits = 0
	Global.live_count = 600
	time = false
	Global.extra_coins = 0
	
	#ABILITYS
	if Global.selected_character == "Delphinidae":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 3
	elif Global.selected_character == "BlueWhale":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 0.1
	elif Global.selected_character == "RhinocodonTypus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "CheloniaMydas":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "CarcharodonCarcharias":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.in_game_coins = int(Global.in_game_points / 5) + Global.extra_coins
	Global.in_game_fruits = int(Global.in_game_points / 50)
	$coins.text = str(Global.in_game_coins)
	$points.text = str(Global.in_game_points) + " POINTS"
		

func _on_ability_button_down():
	$Ability/AbilityButton.visible = false
	$Ability/AbilityButton3.visible = true
	$Ability/Ability.position.y += 600
	if Global.selected_character == "Delphinidae":
		$Ability/ability_time.start()
		Global.Delphinidae = true
		
	elif Global.selected_character == "BlueWhale":
		$Ability/ability_time.start()
		Global.BlueWhale = true
		
	elif Global.selected_character == "RhinocodonTypus":
		$Ability/ability_time.start()
		Global.RhinocodonTypus = true
		
	elif Global.selected_character == "CheloniaMydas":
		$Ability/ability_time.start()
		Global.CheloniaMydas = true
		
	elif Global.selected_character == "CarcharodonCarcharias":
		$Ability/ability_time.start()
		Global.CarcharodonCarcharias = true


func _on_reload_time_timeout():
	$Ability/Ability.visible = true
	$Ability/AbilityButton.visible = true
	$Ability/Ability.position.y -= 600

func _on_ability_time_timeout():
	$Ability/time.text = str($Ability/reload_time.wait_time)
	$Ability/time.visible = true
	time = true
	$Ability/time_count.start()
	$Ability/reload_time.start()
	$Ability/AbilityButton3.visible = false
	if Global.selected_character == "Delphinidae":
		Global.Delphinidae = false
		
	elif Global.selected_character == "BlueWhale":
		if Global.live_count + 75 < 600:
			Global.live_count += 75
		else:
			Global.live_count = 600
		Global.BlueWhale = false
		
	elif Global.selected_character == "RhinocodonTypus":
		Global.RhinocodonTypus = false
		
	elif Global.selected_character == "CheloniaMydas":
		Global.CheloniaMydas = false
		
	elif Global.selected_character == "CarcharodonCarcharias":
		Global.CarcharodonCarcharias = false
	$Ability/ability_time.stop()
	

	


func _on_time_count_timeout():
	if time == false:
		$Ability/time.visible = false
	else:
		$Ability/time.text = str(int($Ability/time.text) - 1)
		if int($Ability/time.text) <= 1:
			time = false
		$Ability/time_count.start()


func _on_menu_music_finished():
	$"menu music".play()

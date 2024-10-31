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
	if Global.selected_character == "TapirusIndicus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 2
	elif Global.selected_character == "PantheraTigrisTigris":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "AilurusFulgens":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "ElephasMaximus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "PongoPygmaeus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.in_game_coins = int(Global.in_game_points / 3) + Global.extra_coins
	Global.in_game_fruits = int(Global.in_game_points / 20)
	$coins.text = str(Global.in_game_coins)
	$points.text = str(Global.in_game_points) + " POINTS"
		

func _on_ability_button_down():
	$Ability/AbilityButton.visible = false
	$Ability/AbilityButton3.visible = true
	$Ability/Ability.position.y += 600
	if Global.selected_character == "TapirusIndicus":
		$Ability/ability_time.start()
		$"bamboo burner generator".spawn_interval = 10000
		Global.TapirusIndicus = true
		
	elif Global.selected_character == "PantheraTigrisTigris":
		$Ability/ability_time.start()
		Global.PantheraTigrisTigris = true
		
	elif Global.selected_character == "AilurusFulgens":
		$Ability/ability_time.start()
		Global.AilurusFulgens = true
		
	elif Global.selected_character == "ElephasMaximus":
		$Ability/ability_time.start()
		Global.ElephasMaximus = true
		
	elif Global.selected_character == "PongoPygmaeus":
		$Ability/ability_time.start()
		Global.PongoPygmaeus = true


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
	if Global.selected_character == "TapirusIndicus":
		$"bamboo burner generator".spawn_interval = 1
		Global.TapirusIndicus = false
		
	elif Global.selected_character == "PantheraTigrisTigris":
		Global.PantheraTigrisTigris = false
		
	elif Global.selected_character == "AilurusFulgens":
		Global.AilurusFulgens = false
		
	elif Global.selected_character == "ElephasMaximus":
		Global.ElephasMaximus = false
		
	elif Global.selected_character == "PongoPygmaeus":
		Global.PongoPygmaeus = false
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

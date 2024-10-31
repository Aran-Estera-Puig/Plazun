extends Node2D

@export var round = 0

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
	time = false
	Global.extra_coins = 0
	#ABILITYS
	if Global.selected_character == "Pongo":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "AnodorhynchusHyacinthinus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 2
	elif Global.selected_character == "PantheraOnca":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "AmbystomaMexicanum":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "Folivora":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
		

func _on_ability_button_down():
	$Ability/AbilityButton.visible = false
	$Ability/AbilityButton3.visible = true
	$Ability/Ability.position.y += 600
	if Global.selected_character == "Pongo":
		$Ability/ability_time.start()
		Global.Pongo = true
		
	elif Global.selected_character == "AnodorhynchusHyacinthinus":
		$Ability/ability_time.start()
		Global.AnodorhynchusHyacinthinus = true
		$Node/Player_2.scale = Vector2(1.5 , 1.5)
		
	elif Global.selected_character == "PantheraOnca":
		$Ability/ability_time.start()
		Global.PantheraOnca = true
		
	elif Global.selected_character == "AmbystomaMexicanum":
		$Ability/ability_time.start()
		Global.AmbystomaMexicanum = true
		
	elif Global.selected_character == "Folivora":
		$Ability/ability_time.start()
		Global.Folivora = true


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
	if Global.selected_character == "Pongo":
		Global.Pongo = false
		
	elif Global.selected_character == "AnodorhynchusHyacinthinus":
		Global.AnodorhynchusHyacinthinus = false
		$Node/Player_2.scale = Vector2(1 , 1)
		
	elif Global.selected_character == "PantheraOnca":
		Global.PantheraOnca = false
		
	elif Global.selected_character == "AmbystomaMexicanum":
		Global.AmbystomaMexicanum = false
		
	elif Global.selected_character == "Folivora":
		Global.Folivora = false
	$Ability/ability_time.stop()
	
	
func _process(delta):
	$points.text = str(Global.in_game_points) + " points"
	Global.in_game_coins = int(Global.in_game_points / 5) + Global.extra_coins
	$coins.text = str(Global.in_game_coins)

	


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

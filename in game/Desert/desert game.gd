extends Node2D

var meters = 0
var time = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$"menu music".play()
	if Global.music_volumen == 0:
		$"menu music".set_volume_db((Global.music_volumen -10) * 10000)
	else:
		$"menu music".set_volume_db((Global.music_volumen -10) * 3)
	
	Global.in_game_coins = 0
	Global.live_count = 600
	Global.in_game_fruits = 0
	meters = 0
	if Global.selected_character in ["Rhinocerotidae","EquusZebra"]:
		$Generators/meat_generator.queue_free()
	else:
		$Generators/grass_generator.queue_free()
	
	if Global.selected_character == "Rhinocerotidae":
		$coins_giver.wait_time = 5
	elif Global.selected_character == "LycaonPictus":
		$coins_giver.wait_time = 4
	elif Global.selected_character == "EquusZebra":
		$coins_giver.wait_time = 3.33
	elif Global.selected_character == "AcinonyxJubatus":
		$coins_giver.wait_time = 2.85
	elif Global.selected_character == "PantheraLeo":
		$coins_giver.wait_time = 2.5
	$coins_giver.start()
	$meters_count_timer.start()
	
	
	#ABILITYS
	if Global.selected_character == "Rhinocerotidae":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 3
	elif Global.selected_character == "LycaonPictus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "EquusZebra":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 0.75
	elif Global.selected_character == "AcinonyxJubatus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "PantheraLeo":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
		

func _on_ability_button_down():
	$Ability/AbilityButton.visible = false
	$Ability/AbilityButton3.visible = true
	$Ability/Ability.position.y += 300
	if Global.selected_character == "Rhinocerotidae":
		$Ability/ability_time.start()
		Global.ryno_ability = true
		
	elif Global.selected_character == "LycaonPictus":
		$Ability/ability_time.start()
		Global.LycaonPictus = true
		
	elif Global.selected_character == "EquusZebra":
		$Ability/ability_time.start()
		Global.EquusZebra = true
		$Player_1.scale = Vector2(1.5,1.5)
		
	elif Global.selected_character == "AcinonyxJubatus":
		$Ability/ability_time.start()
		Global.AcinonyxJubatus = true
		
	elif Global.selected_character == "PantheraLeo":
		$Ability/ability_time.start()
		Global.PantheraLeo = true


func _on_reload_time_timeout():
	$Ability/Ability.visible = true
	$Ability/AbilityButton.visible = true
	$Ability/Ability.position.y -= 300

func _on_ability_time_timeout():
	$Ability/time.text = str($Ability/reload_time.wait_time)
	$Ability/time.visible = true
	time = true
	$Ability/time_count.start()
	$Ability/reload_time.start()
	$Ability/AbilityButton3.visible = false
	if Global.selected_character == "Rhinocerotidae":
		Global.ryno_ability = false
		
	elif Global.selected_character == "LycaonPictus":
		Global.LycaonPictus = false
		
	elif Global.selected_character == "EquusZebra":
		Global.EquusZebra = false
		$Player_1.scale = Vector2(1,1)
		
	elif Global.selected_character == "AcinonyxJubatus":
		Global.AcinonyxJubatus = false
		
	elif Global.selected_character == "PantheraLeo":
		Global.PantheraLeo = false
	$Ability/ability_time.stop()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.live_count <= -50:
		Global.live_count = 600
		if meters >= 250:
			Global.in_game_fruits = int(meters / 250)
		if Global.in_game_fruits + Global.fruits > Global.max_fruits:
			Global.fruits = Global.max_fruits
		else:
			Global.fruits += Global.in_game_fruits
		if meters > Global.max_desert:
			Global.max_desert = meters
		get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	$coins.text = str(round(Global.in_game_coins))

func _on_coins_giver_timeout():
	Global.coins += 1
	Global.in_game_coins += 1
	$coins.text = str(round(Global.in_game_coins))
	$coins_giver.start()


func _on_meters_count_timer_timeout():
	meters += round(50 * 0.1 / $coins_giver.wait_time)
	Global.total_meters_desert += round(50 * 0.1 / $coins_giver.wait_time)
	$meters.text = str(meters) + "m"
	$meters_count_timer.start()


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

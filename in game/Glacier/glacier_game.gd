extends Node2D

var time = false
var ap = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$"menu music".play()
	if Global.music_volumen == 0:
		$"menu music".set_volume_db((Global.music_volumen -10) * 10000)
	else:
		$"menu music".set_volume_db((Global.music_volumen -10) * 3)
	
	Global.VulpesLagopus = false
	Global.UrsusMaritimus = false
	Global.OdobenusRosmarus = false
	Global.HydrurgaLeptonyx = false
	Global.EmperorPenguin = false
	Global.in_game_coins = 0
	Global.in_game_points = 0
	Global.in_game_fruits = 0
	Global.live_count = 600
	time = false
	Global.extra_coins = 0
	
	#ABILITYS
	if Global.selected_character == "VulpesLagopus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "UrsusMaritimus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "OdobenusRosmarus":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "HydrurgaLeptonyx":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5
	elif Global.selected_character == "EmperorPenguin":
		$Ability/reload_time.wait_time = 15
		$Ability/ability_time.wait_time = 5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.in_game_coins = int(Global.in_game_points / 10) + Global.extra_coins
	Global.in_game_fruits = int(Global.in_game_points / 50)
	$coins.text = str(Global.in_game_coins)
	$points.text = str(Global.in_game_points) + " POINTS"
		

func _on_ability_button_down():
	$Ability/AbilityButton.visible = false
	$Ability/AbilityButton3.visible = true
	$Ability/Ability.position.y += 600
	if not ap:
		ap = true
		if Global.selected_character == "VulpesLagopus":
			$Ability/ability_time.start()
			Global.VulpesLagopus = true
			
		elif Global.selected_character == "UrsusMaritimus":
			$Ability/ability_time.start()
			Global.UrsusMaritimus = true
			
		elif Global.selected_character == "OdobenusRosmarus":
			$Ability/ability_time.start()
			Global.OdobenusRosmarus = true
			
		elif Global.selected_character == "HydrurgaLeptonyx":
			$Ability/ability_time.start()
			Global.HydrurgaLeptonyx = true
			
		elif Global.selected_character == "EmperorPenguin":
			$Ability/ability_time.start()
			Global.EmperorPenguin = true


func _on_reload_time_timeout():
	$Ability/Ability.visible = true
	$Ability/AbilityButton.visible = true
	ap = false
	$Ability/Ability.position.y -= 600

func _on_ability_time_timeout():
	$Ability/time.text = str($Ability/reload_time.wait_time)
	$Ability/time.visible = true
	time = true
	$Ability/time_count.start()
	$Ability/reload_time.start()
	$Ability/AbilityButton3.visible = false
	if Global.selected_character == "VulpesLagopus":
		Global.VulpesLagopus = false
		
	elif Global.selected_character == "UrsusMaritimus":
		Global.UrsusMaritimus = false
		
	elif Global.selected_character == "OdobenusRosmarus":
		Global.OdobenusRosmarus = false
		
	elif Global.selected_character == "HydrurgaLeptonyx":
		Global.HydrurgaLeptonyx = false
		
	elif Global.selected_character == "EmperorPenguin":
		Global.EmperorPenguin = false
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

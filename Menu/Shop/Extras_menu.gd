extends Node2D

var buy = ""
var winned = 0
var win = ""
var new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.buying:
		$buy/buy.visible = true
		if buy == "false":
			$buy/buy.visible = false
			Global.buying = false
			Global.item = ""
			buy = ""
		elif buy == "true":
			if Global.gems < 10:
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
				$buy/cant_buy.text = "You don't have enough gems!"
				$buy/cant_buy.visible = true
				$pop_up.start()
			elif Global.item in Global.fragments1:
				if Global.fragments1[Global.item] >= 20:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You have already unlocked it!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
				elif Global.gems >= 10:
					Global.gems -= 10
					Global.fragments1[Global.item] += 1
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 1
			elif Global.item in Global.fragments2:
				if Global.fragments2[Global.item] >= 20:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You have already unlocked it!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
				elif Global.gems >= 10:
					Global.gems -= 10
					Global.fragments2[Global.item] += 1
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 1
			elif Global.item in Global.fragments3:
				if Global.fragments3[Global.item] >= 20:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You have already unlocked it!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
				elif Global.gems >= 10:
					Global.gems -= 10
					Global.fragments3[Global.item] += 1
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 1
			elif Global.item in Global.fragments4:
				if Global.fragments4[Global.item] >= 20:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You have already unlocked it!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
				elif Global.gems >= 10:
					Global.gems -= 10
					Global.fragments4[Global.item] += 1
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 1
			elif Global.item in Global.fragments5:
				if Global.fragments5[Global.item] >= 20:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You have already unlocked it!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
				elif Global.gems >= 10:
					Global.gems -= 10
					Global.fragments5[Global.item] += 1
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 1
		
		if Global.item == "blue cap":
			new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")
		elif Global.item == "bow":
			new_texture = preload("res://Assets/Menu/Shop/Extras/bow.png")
		elif Global.item == "Caesar's crown":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Caesar's crown.png")
		elif Global.item == "Cap copter":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Cap copter.png")
		elif Global.item == "Chef Hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Chef Hat.png")
		elif Global.item == "Crown":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")
		
		elif Global.item == "Diadem":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Diadem.png")
		elif Global.item == "English hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/English hat.png")
		elif Global.item == "green cap":
			new_texture = preload("res://Assets/Menu/Shop/Extras/green cap.png")
		elif Global.item == "Headphones":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Headphones.png")
		elif Global.item == "Hearts Hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Hearts Hat.png")
		elif Global.item == "magician hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/magician hat.png")
		
		elif Global.item == "Military Helmet":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Military Helmet.png")
		elif Global.item == "motorcycle helmet":
			new_texture = preload("res://Assets/Menu/Shop/Extras/motorcycle helmet.png")
		elif Global.item == "Ninja headband":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Ninja headband.png")
		elif Global.item == "panama hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/panama hat.png")
		elif Global.item == "pirate hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/pirate hat.png")
		elif Global.item == "Queen's Hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Queen's Hat.png")
		
		elif Global.item == "rabbit hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/rabbit hat.png")
		elif Global.item == "red cap":
			new_texture = preload("res://Assets/Menu/Shop/Extras/red cap.png")
		elif Global.item == "Roses":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Roses.png")
		elif Global.item == "Running Cap":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Running Cap.png")
		elif Global.item == "santa hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/santa hat.png")
		elif Global.item == "Straw hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Straw hat.png")
		
		elif Global.item == "Swimming cap":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Swimming cap.png")
		elif Global.item == "Viking Helmet":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Viking Helmet.png")
		elif Global.item == "Warrior Helmet":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Warrior Helmet.png")
		elif Global.item == "Witch Hat":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Witch Hat.png")
		elif Global.item == "Worker helmet":
			new_texture = preload("res://Assets/Menu/Shop/Extras/Worker helmet.png")
		elif Global.item == "yellow cap":
			new_texture = preload("res://Assets/Menu/Shop/Extras/yellow cap.png")
		
		if buy == "true":
			$reward/reward/rt/fragment.texture = new_texture
			$reward/reward/rt/fragment.visible = true
			$reward/reward/rt.text = str(winned)
			$reward/reward.visible = true
			buy = ""
	
	else:
		$buy/buy.visible = false
		Global.buying = false
		Global.item = ""
		buy = ""


func _on_b_1_button_up():
	Global.buying = true
	if Global.page == 1:
		Global.item = "blue cap"
	elif Global.page == 2:
		Global.item = "Diadem"
	elif Global.page == 3:
		Global.item = "Military Helmet"
	elif Global.page == 4:
		Global.item = "rabbit hat"
	elif Global.page == 5:
		Global.item = "Swimming cap"
func _on_b_2_button_up():
	Global.buying = true
	if Global.page == 1:
		Global.item = "bow"
	elif Global.page == 2:
		Global.item = "English hat"
	elif Global.page == 3:
		Global.item = "motorcycle helmet"
	elif Global.page == 4:
		Global.item = "red cap"
	elif Global.page == 5:
		Global.item = "Viking Helmet"
func _on_b_3_button_up():
	Global.buying = true
	if Global.page == 1:
		Global.item = "Caesar's crown"
	elif Global.page == 2:
		Global.item = "green cap"
	elif Global.page == 3:
		Global.item = "Ninja headband"
	elif Global.page == 4:
		Global.item = "Roses"
	elif Global.page == 5:
		Global.item = "Warrior Helmet"
func _on_b_4_button_up():
	Global.buying = true
	if Global.page == 1:
		Global.item = "Cap copter"
	elif Global.page == 2:
		Global.item = "Headphones"
	elif Global.page == 3:
		Global.item = "panama hat"
	elif Global.page == 4:
		Global.item = "Running Cap"
	elif Global.page == 5:
		Global.item = "Witch Hat"
func _on_b_5_button_up():
	Global.buying = true
	if Global.page == 1:
		Global.item = "Chef Hat"
	elif Global.page == 2:
		Global.item = "Hearts Hat"
	elif Global.page == 3:
		Global.item = "pirate hat"
	elif Global.page == 4:
		Global.item = "santa hat"
	elif Global.page == 5:
		Global.item = "Worker helmet"
func _on_b_6_button_up():
	Global.buying = true
	if Global.page == 1:
		Global.item = "Crown"
	elif Global.page == 2:
		Global.item = "magician hat"
	elif Global.page == 3:
		Global.item = "Queen's Hat"
	elif Global.page == 4:
		Global.item = "Straw hat"
	elif Global.page == 5:
		Global.item = "yellow cap"


func _on_no_button_button_up():
	buy = "false"
func _on_buy_button_button_up():
	buy = "true"
func _on_pop_up_timeout():
	$buy/cant_buy.visible = false
	$pop_up.stop()

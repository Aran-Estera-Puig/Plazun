extends Node2D

var buy = ""

var rng = RandomNumberGenerator.new()
var r1 = 0
var r2 = 0
var r3 = 0
var failed = false
var win = ""
var winned = 0
var new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")

var rewarded_ad: RewardedAd
var rewarded_ad_load_callback := RewardedAdLoadCallback.new()

func _ready():
	# Configuración de callbacks para los eventos de AdMob
	rewarded_ad_load_callback.on_ad_failed_to_load = on_rewarded_ad_failed_to_load
	rewarded_ad_load_callback.on_ad_loaded = on_rewarded_ad_loaded
	rewarded_ad_load_callback.on_ad_closed = on_rewarded_ad_closed
	rewarded_ad_load_callback.on_rewarded_ad_earned_reward = on_rewarded_ad_earned_reward

func _on_free_chest_pressed():
	if rewarded_ad:
		rewarded_ad.show()
		$Timer.start()
	var unit_id: String
	if OS.get_name() == "Android":
		unit_id = "ca-app-pub-7497171488062644/7206160572"
	elif OS.get_name() == "iOS":
		unit_id = "..."
	print("1")
	RewardedAdLoader.new().load(unit_id, AdRequest.new(), rewarded_ad_load_callback)

func on_rewarded_ad_failed_to_load(adError: LoadAdError):
	failed = true
	print("failed")

func on_rewarded_ad_loaded(rewarded_ad: RewardedAd):
	self.rewarded_ad = rewarded_ad
	failed = false
	print("2")

func on_rewarded_ad_closed():
	pass
func on_rewarded_ad_earned_reward():
	recompensa()

func recompensa():
	r1 = rng.randi_range(1,100)
	if r1 <= 40:
		win = "coins"
		r2 = rng.randi_range(1,4)
		if r2 == 1:
			winned = 5
			if Global.coins + 5 > Global.max_coins:
				Global.coins = Global.max_coins
			else:
				Global.coins += 5
		elif r2 == 2:
			winned = 25
			if Global.coins + 25 > Global.max_coins:
				Global.coins = Global.max_coins
			else:
				Global.coins += 25
		elif r2 == 3:
			winned = 50
			if Global.coins + 50 > Global.max_coins:
				Global.coins = Global.max_coins
			else:
				Global.coins += 50
		elif r2 == 4:
			winned = 100
			if Global.coins + 100 > Global.max_coins:
				Global.coins = Global.max_coins
			else:
				Global.coins += 100
		
	elif r1 > 40 and r1 <= 70:
		win = "fruits"
		r2 = rng.randi_range(1,5)
		winned = r2
		if Global.fruits + r2 > Global.max_fruits:
			Global.fruits = Global.max_fruits
		else:
			Global.fruits += r2
	
	elif r1 > 70 and r1 <= 90:
		win = "gems"
		r2 = rng.randi_range(1,5)
		winned = r2
		Global.gems += r2
	elif r1 > 90:
		$buy/buy.visible = false
		Global.buying = false
		Global.item = ""
		win = "fragments"
		r2 = rng.randi_range(1,3)
		winned = r2
		r1 = rng.randi_range(1,5)
		if r1 == 1:
			r3 = rng.randi_range(1,6)
			if r3 == 1:
				Global.fragments1["blue cap"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 2:
				Global.fragments1["bow"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/bow.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 3:
				Global.fragments1["Caesar's crown"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Caesar's crown.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 4:
				Global.fragments1["Cap copter"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Cap copter.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 5:
				Global.fragments1["Chef Hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Chef Hat.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 6:
				Global.fragments1["Crown"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")
				$reward/reward/rt/fragment.texture = new_texture
		elif r1 == 2:
			r3 = rng.randi_range(1,6)
			if r3 == 1:
				Global.fragments2["Diadem"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Diadem.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 2:
				Global.fragments2["English hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/English hat.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 3:
				Global.fragments2["green cap"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/green cap.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 4:
				Global.fragments2["Headphones"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Headphones.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 5:
				Global.fragments2["Hearts Hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Hearts Hat.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 6:
				Global.fragments2["magician hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/magician hat.png")
				$reward/reward/rt/fragment.texture = new_texture
		elif r1 == 3:
			r3 = rng.randi_range(1,6)
			if r3 == 1:
				Global.fragments3["Military Helmet"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Military Helmet.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 2:
				Global.fragments3["motorcycle helmet"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/motorcycle helmet.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 3:
				Global.fragments3["Ninja headband"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Ninja headband.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 4:
				Global.fragments3["panama hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/panama hat.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 5:
				Global.fragments3["pirate hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/pirate hat.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 6:
				Global.fragments3["Queen's Hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Queen's Hat.png")
				$reward/reward/rt/fragment.texture = new_texture
		elif r1 == 4:
			r3 = rng.randi_range(1,6)
			if r3 == 1:
				Global.fragments4["rabbit hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/rabbit hat.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 2:
				Global.fragments4["red cap"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/red cap.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 3:
				Global.fragments4["Roses"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Roses.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 4:
				Global.fragments4["Running Cap"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Running Cap.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 5:
				Global.fragments4["santa hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/santa hat.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 6:
				Global.fragments4["Straw hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Straw hat.png")
				$reward/reward/rt/fragment.texture = new_texture
		elif r1 == 5:
			r3 = rng.randi_range(1,6)
			if r3 == 1:
				Global.fragments5["Swimming cap"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Swimming cap.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 2:
				Global.fragments5["Viking Helmet"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Viking Helmet.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 3:
				Global.fragments5["Warrior Helmet"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Warrior Helmet.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 4:
				Global.fragments5["Witch Hat"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Witch Hat.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 5:
				Global.fragments5["Worker helmet"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/Worker helmet.png")
				$reward/reward/rt/fragment.texture = new_texture
			elif r3 == 6:
				Global.fragments5["yellow cap"] += r2
				new_texture = preload("res://Assets/Menu/Shop/Extras/yellow cap.png")
				$reward/reward/rt/fragment.texture = new_texture
	
	if buy == "true":
		if win == "coins":
			$reward/reward/rt/coin.visible = true
			$reward/reward/rt/fruit.visible = false
			$reward/reward/rt/gem.visible = false
		elif win == "fruits":
			$reward/reward/rt/coin.visible = false
			$reward/reward/rt/fruit.visible = true
			$reward/reward/rt/gem.visible = false
		elif win == "gems":
			$reward/reward/rt/coin.visible = false
			$reward/reward/rt/fruit.visible = false
			$reward/reward/rt/gem.visible = true
		else:
			$reward/reward/rt/coin.visible = false
			$reward/reward/rt/fruit.visible = false
			$reward/reward/rt/gem.visible = false
		$reward/reward/rt.text = str(winned)
		$reward/reward.visible = true
		buy = ""





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.buying == true:
		if Global.item == "FREE Chest":
			$buy/buy.visible = true
			buy = "true"
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
		elif Global.item == "Normal Chest":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins < 100:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					Global.coins -= 100
					r1 = rng.randi_range(1,100)
					if r1 <= 45:
						win = "coins"
						r2 = rng.randi_range(1,3)
						if r2 == 1:
							winned = 50
							if Global.coins + 50 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 50
						elif r2 == 2:
							winned = 100
							if Global.coins + 100 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 100
						elif r2 == 3:
							winned = 150
							if Global.coins + 150 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 150
						
					elif r1 > 45 and r1 <= 80:
						win = "fruits"
						r2 = rng.randi_range(1,5)
						winned = r2
						if Global.fruits + r2 > Global.max_fruits:
							Global.fruits = Global.max_fruits
						else:
							Global.fruits += r2
					
					elif r1 > 80 and r1 <= 90:
						win = "gems"
						r2 = rng.randi_range(1,3)
						winned = r2
						Global.gems += r2
					elif r1 > 90:
						$buy/buy.visible = false
						Global.buying = false
						Global.item = ""
						win = "fragments"
						r2 = rng.randi_range(1,3)
						winned = r2
						r1 = rng.randi_range(1,5)
						if r1 == 1:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments1["blue cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments1["bow"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/bow.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments1["Caesar's crown"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Caesar's crown.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments1["Cap copter"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Cap copter.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments1["Chef Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Chef Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments1["Crown"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 2:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments2["Diadem"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Diadem.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments2["English hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/English hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments2["green cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/green cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments2["Headphones"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Headphones.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments2["Hearts Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Hearts Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments2["magician hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/magician hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 3:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments3["Military Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Military Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments3["motorcycle helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/motorcycle helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments3["Ninja headband"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Ninja headband.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments3["panama hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/panama hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments3["pirate hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/pirate hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments3["Queen's Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Queen's Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 4:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments4["rabbit hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/rabbit hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments4["red cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/red cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments4["Roses"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Roses.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments4["Running Cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Running Cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments4["santa hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/santa hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments4["Straw hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Straw hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 5:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments5["Swimming cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Swimming cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments5["Viking Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Viking Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments5["Warrior Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Warrior Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments5["Witch Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Witch Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments5["Worker helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Worker helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments5["yellow cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/yellow cap.png")
								$reward/reward/rt/fragment.texture = new_texture
		elif Global.item == "Rare Chest":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins < 200:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					Global.coins -= 200
					r1 = rng.randi_range(1,100)
					if r1 <= 40:
						win = "coins"
						r2 = rng.randi_range(1,4)
						if r2 == 1:
							winned = 150
							if Global.coins + 150 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 150
						elif r2 == 2:
							winned = 200
							if Global.coins + 200 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 200
						elif r2 == 3:
							winned = 250
							if Global.coins + 250 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 250
						elif r2 == 4:
							winned = 300
							if Global.coins + 300 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 300
						
					elif r1 > 40 and r1 <= 70:
						win = "fruits"
						r2 = rng.randi_range(3,6)
						winned = r2
						if Global.fruits + r2 > Global.max_fruits:
							Global.fruits = Global.max_fruits
						else:
							Global.fruits += r2
					
					elif r1 > 70 and r1 <= 85:
						win = "gems"
						r2 = rng.randi_range(3,5)
						winned = r2
						Global.gems += r2
					elif r1 > 85:
						$buy/buy.visible = false
						Global.buying = false
						Global.item = ""
						win = "fragments"
						r2 = rng.randi_range(2,4)
						winned = r2
						r1 = rng.randi_range(1,5)
						if r1 == 1:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments1["blue cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments1["bow"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/bow.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments1["Caesar's crown"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Caesar's crown.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments1["Cap copter"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Cap copter.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments1["Chef Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Chef Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments1["Crown"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 2:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments2["Diadem"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Diadem.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments2["English hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/English hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments2["green cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/green cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments2["Headphones"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Headphones.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments2["Hearts Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Hearts Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments2["magician hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/magician hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 3:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments3["Military Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Military Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments3["motorcycle helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/motorcycle helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments3["Ninja headband"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Ninja headband.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments3["panama hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/panama hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments3["pirate hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/pirate hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments3["Queen's Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Queen's Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 4:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments4["rabbit hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/rabbit hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments4["red cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/red cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments4["Roses"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Roses.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments4["Running Cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Running Cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments4["santa hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/santa hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments4["Straw hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Straw hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 5:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments5["Swimming cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Swimming cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments5["Viking Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Viking Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments5["Warrior Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Warrior Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments5["Witch Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Witch Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments5["Worker helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Worker helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments5["yellow cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/yellow cap.png")
								$reward/reward/rt/fragment.texture = new_texture
		elif Global.item == "Epic Chest":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins < 300:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					Global.coins -= 300
					r1 = rng.randi_range(1,100)
					if r1 <= 35:
						win = "coins"
						r2 = rng.randi_range(1,5)
						if r2 == 1:
							winned = 200
							if Global.coins + 200 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 200
						elif r2 == 2:
							winned = 250
							if Global.coins + 250 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 250
						elif r2 == 3:
							winned = 300
							if Global.coins + 300 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 300
						elif r2 == 4:
							winned = 350
							if Global.coins + 350 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 350
						elif r2 == 5:
							winned = 400
							if Global.coins + 400 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 400
						
					elif r1 > 35 and r1 <= 60:
						win = "fruits"
						r2 = rng.randi_range(5,10)
						winned = r2
						if Global.fruits + r2 > Global.max_fruits:
							Global.fruits = Global.max_fruits
						else:
							Global.fruits += r2
					
					elif r1 > 60 and r1 <= 80:
						win = "gems"
						r2 = rng.randi_range(5,7)
						winned = r2
						Global.gems += r2
					elif r1 > 80:
						$buy/buy.visible = false
						Global.buying = false
						Global.item = ""
						win = "fragments"
						r2 = rng.randi_range(3,5)
						winned = r2
						r1 = rng.randi_range(1,5)
						if r1 == 1:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments1["blue cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments1["bow"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/bow.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments1["Caesar's crown"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Caesar's crown.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments1["Cap copter"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Cap copter.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments1["Chef Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Chef Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments1["Crown"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 2:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments2["Diadem"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Diadem.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments2["English hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/English hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments2["green cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/green cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments2["Headphones"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Headphones.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments2["Hearts Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Hearts Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments2["magician hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/magician hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 3:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments3["Military Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Military Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments3["motorcycle helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/motorcycle helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments3["Ninja headband"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Ninja headband.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments3["panama hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/panama hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments3["pirate hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/pirate hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments3["Queen's Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Queen's Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 4:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments4["rabbit hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/rabbit hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments4["red cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/red cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments4["Roses"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Roses.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments4["Running Cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Running Cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments4["santa hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/santa hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments4["Straw hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Straw hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 5:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments5["Swimming cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Swimming cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments5["Viking Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Viking Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments5["Warrior Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Warrior Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments5["Witch Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Witch Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments5["Worker helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Worker helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments5["yellow cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/yellow cap.png")
								$reward/reward/rt/fragment.texture = new_texture
		elif Global.item == "Legendary Chest":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins < 500:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					Global.coins -= 500
					r1 = rng.randi_range(1,100)
					if r1 <= 30:
						win = "coins"
						r2 = rng.randi_range(1,5)
						if r2 == 1:
							winned = 300
							if Global.coins + 300 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 300
						elif r2 == 2:
							winned = 400
							if Global.coins + 400 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 400
						elif r2 == 3:
							winned = 500
							if Global.coins + 500 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 500
						elif r2 == 4:
							winned = 600
							if Global.coins + 600 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 600
						elif r2 == 5:
							winned = 700
							if Global.coins + 700 > Global.max_coins:
								Global.coins = Global.max_coins
							else:
								Global.coins += 700
						
					elif r1 > 30 and r1 <= 50:
						win = "fruits"
						r2 = rng.randi_range(7,12)
						winned = r2
						if Global.fruits + r2 > Global.max_fruits:
							Global.fruits = Global.max_fruits
						else:
							Global.fruits += r2
					
					elif r1 > 50 and r1 <= 75:
						win = "gems"
						r2 = rng.randi_range(7,10)
						winned = r2
						Global.gems += r2
					elif r1 > 75:
						$buy/buy.visible = false
						Global.buying = false
						Global.item = ""
						win = "fragments"
						r2 = rng.randi_range(5,7)
						winned = r2
						r1 = rng.randi_range(1,5)
						if r1 == 1:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments1["blue cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments1["bow"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/bow.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments1["Caesar's crown"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Caesar's crown.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments1["Cap copter"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Cap copter.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments1["Chef Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Chef Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments1["Crown"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 2:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments2["Diadem"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Diadem.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments2["English hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/English hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments2["green cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/green cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments2["Headphones"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Headphones.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments2["Hearts Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Hearts Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments2["magician hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/magician hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 3:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments3["Military Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Military Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments3["motorcycle helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/motorcycle helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments3["Ninja headband"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Ninja headband.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments3["panama hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/panama hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments3["pirate hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/pirate hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments3["Queen's Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Queen's Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 4:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments4["rabbit hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/rabbit hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments4["red cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/red cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments4["Roses"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Roses.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments4["Running Cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Running Cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments4["santa hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/santa hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments4["Straw hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Straw hat.png")
								$reward/reward/rt/fragment.texture = new_texture
						elif r1 == 5:
							r3 = rng.randi_range(1,6)
							if r3 == 1:
								Global.fragments5["Swimming cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Swimming cap.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 2:
								Global.fragments5["Viking Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Viking Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 3:
								Global.fragments5["Warrior Helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Warrior Helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 4:
								Global.fragments5["Witch Hat"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Witch Hat.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 5:
								Global.fragments5["Worker helmet"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/Worker helmet.png")
								$reward/reward/rt/fragment.texture = new_texture
							elif r3 == 6:
								Global.fragments5["yellow cap"] += r2
								new_texture = preload("res://Assets/Menu/Shop/Extras/yellow cap.png")
								$reward/reward/rt/fragment.texture = new_texture
		elif Global.item == "Special Chest":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.gems < 75:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough gems!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					Global.gems -= 75
					win = "fragments"
					r2 = rng.randi_range(5,10)
					winned = r2
					r1 = rng.randi_range(1,5)
					if r1 == 1:
						r3 = rng.randi_range(1,6)
						if r3 == 1:
							Global.fragments1["blue cap"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 2:
							Global.fragments1["bow"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/bow.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 3:
							Global.fragments1["Caesar's crown"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Caesar's crown.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 4:
							Global.fragments1["Cap copter"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Cap copter.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 5:
							Global.fragments1["Chef Hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Chef Hat.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 6:
							Global.fragments1["Crown"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")
							$reward/reward/rt/fragment.texture = new_texture
					elif r1 == 2:
						r3 = rng.randi_range(1,6)
						if r3 == 1:
							Global.fragments2["Diadem"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Diadem.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 2:
							Global.fragments2["English hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/English hat.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 3:
							Global.fragments2["green cap"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/green cap.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 4:
							Global.fragments2["Headphones"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Headphones.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 5:
							Global.fragments2["Hearts Hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Hearts Hat.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 6:
							Global.fragments2["magician hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/magician hat.png")
							$reward/reward/rt/fragment.texture = new_texture
					elif r1 == 3:
						r3 = rng.randi_range(1,6)
						if r3 == 1:
							Global.fragments3["Military Helmet"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Military Helmet.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 2:
							Global.fragments3["motorcycle helmet"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/motorcycle helmet.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 3:
							Global.fragments3["Ninja headband"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Ninja headband.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 4:
							Global.fragments3["panama hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/panama hat.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 5:
							Global.fragments3["pirate hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/pirate hat.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 6:
							Global.fragments3["Queen's Hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Queen's Hat.png")
							$reward/reward/rt/fragment.texture = new_texture
					elif r1 == 4:
						r3 = rng.randi_range(1,6)
						if r3 == 1:
							Global.fragments4["rabbit hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/rabbit hat.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 2:
							Global.fragments4["red cap"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/red cap.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 3:
							Global.fragments4["Roses"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Roses.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 4:
							Global.fragments4["Running Cap"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Running Cap.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 5:
							Global.fragments4["santa hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/santa hat.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 6:
							Global.fragments4["Straw hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Straw hat.png")
							$reward/reward/rt/fragment.texture = new_texture
					elif r1 == 5:
						r3 = rng.randi_range(1,6)
						if r3 == 1:
							Global.fragments5["Swimming cap"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Swimming cap.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 2:
							Global.fragments5["Viking Helmet"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Viking Helmet.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 3:
							Global.fragments5["Warrior Helmet"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Warrior Helmet.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 4:
							Global.fragments5["Witch Hat"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Witch Hat.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 5:
							Global.fragments5["Worker helmet"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/Worker helmet.png")
							$reward/reward/rt/fragment.texture = new_texture
						elif r3 == 6:
							Global.fragments5["yellow cap"] += r2
							new_texture = preload("res://Assets/Menu/Shop/Extras/yellow cap.png")
							$reward/reward/rt/fragment.texture = new_texture
		
		if buy == "true":
			if win == "coins":
				$reward/reward/rt/coin.visible = true
				$reward/reward/rt/fruit.visible = false
				$reward/reward/rt/gem.visible = false
				$reward/reward/rt/fragment.visible = false
			elif win == "fruits":
				$reward/reward/rt/coin.visible = false
				$reward/reward/rt/fruit.visible = true
				$reward/reward/rt/gem.visible = false
				$reward/reward/rt/fragment.visible = false
			elif win == "gems":
				$reward/reward/rt/coin.visible = false
				$reward/reward/rt/fruit.visible = false
				$reward/reward/rt/gem.visible = true
				$reward/reward/rt/fragment.visible = false
			else:
				$reward/reward/rt/coin.visible = false
				$reward/reward/rt/fruit.visible = false
				$reward/reward/rt/gem.visible = false
				$reward/reward/rt/fragment.visible = true
			$reward/reward/rt.text = str(winned)
			$reward/reward.visible = true
			buy = ""
	
	else:
		$buy/buy.visible = false
		Global.buying = false
		Global.item = ""
		buy = ""

func _on_no_button_button_up():
	buy = "false"


func _on_buy_button_button_up():
	buy = "true"


func _on_free_chest_button_up():
	Global.buying = true
	Global.item = "FREE Chest"


func _on_normal_chest_button_up():
	Global.buying = true
	Global.item = "Normal Chest"


func _on_rare_chest_button_up():
	Global.buying = true
	Global.item = "Rare Chest"


func _on_epic_chest_button_up():
	Global.buying = true
	Global.item = "Epic Chest"


func _on_legendary_chest_button_up():
	Global.buying = true
	Global.item = "Legendary Chest"


func _on_special_chest_button_up():
	Global.buying = true
	Global.item = "Special Chest"


func _on_pop_up_timeout():
	$buy/cant_buy.visible = false
	$pop_up.stop()


func _on_timer_timeout():
	if !failed:
		recompensa()
	$Timer.stop()

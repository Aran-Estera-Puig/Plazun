extends Node2D

var buy = ""
var winned = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.buying == true:
		
		if Global.item == "coins 200":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins >= Global.max_coins or Global.coins + 200 > Global.max_coins:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.gems >= 25:
					winned = 200
					Global.gems -= 25
					Global.coins += 200
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough gems!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		elif Global.item == "coins 500":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins >= Global.max_coins or Global.coins + 500 > Global.max_coins:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.gems >= 50:
					winned = 500
					Global.gems -= 50
					Global.coins += 500
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough gems!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		elif Global.item == "coins 850":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins >= Global.max_coins or Global.coins + 850 > Global.max_coins:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.gems >= 75:
					winned = 850
					Global.gems -= 75
					Global.coins += 850
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough gems!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		elif Global.item == "coins 1300":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins >= Global.max_coins or Global.coins + 1300 > Global.max_coins:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.gems >= 100:
					winned = 1300
					Global.gems -= 100
					Global.coins += 1300
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough gems!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		elif Global.item == "coins 2200":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins >= Global.max_coins or Global.coins + 2200 > Global.max_coins:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.gems >= 150:
					winned = 2200
					Global.gems -= 150
					Global.coins += 2200
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough gems!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		elif Global.item == "coins 3000":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.coins >= Global.max_coins or Global.coins + 3000 > Global.max_coins:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.gems >= 200:
					winned = 3000
					Global.gems -= 200
					Global.coins += 3000
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough gems!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		
		if buy == "true":
			$reward/reward/rt/coin.visible = true
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



func _on_coins_200_button_up():
	Global.buying = true
	Global.item = "coins 200"


func _on_coins_500_button_up():
	Global.buying = true
	Global.item = "coins 500"


func _on_coins_850_button_up():
	Global.buying = true
	Global.item = "coins 850"


func _on_coins_1300_button_up():
	Global.buying = true
	Global.item = "coins 1300"


func _on_coins_2200_button_up():
	Global.buying = true
	Global.item = "coins 2200"


func _on_coins_3000_button_up():
	Global.buying = true
	Global.item = "coins 3000"


func _on_pop_up_timeout():
	$buy/cant_buy.visible = false
	$pop_up.stop()

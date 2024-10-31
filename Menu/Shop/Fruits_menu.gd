extends Node2D

var buy = ""
var winned = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.buying == true:
		
		if Global.item == "fruit 1":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.fruits >= Global.max_fruits:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.coins >= 50:
					Global.coins -= 50
					Global.fruits += 1
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 1
				else:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		if Global.item == "fruit 3":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.fruits >= Global.max_fruits or Global.fruits + 3 > Global.max_fruits:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.coins >= 140:
					Global.coins -= 140
					Global.fruits += 3
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 3
				else:
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		if Global.item == "fruit 5":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.fruits >= Global.max_fruits or Global.fruits + 5 > Global.max_fruits:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.coins >= 215:
					Global.coins -= 215
					Global.fruits += 5
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 5
				else:
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		if Global.item == "fruit 10":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.fruits >= Global.max_fruits or Global.fruits + 10 > Global.max_fruits:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.coins >= 400:
					Global.coins -= 400
					Global.fruits += 10
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 10
				else:
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		if Global.item == "fruit 20":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.fruits >= Global.max_fruits or Global.fruits + 20 > Global.max_fruits:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.coins >= 750:
					Global.coins -= 750
					Global.fruits += 20
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 20
				else:
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		if Global.item == "fruit 30":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				if Global.fruits >= Global.max_fruits or Global.fruits + 30 > Global.max_fruits:
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
					$buy/cant_buy.text = "You don't have enough space!"
					$buy/cant_buy.visible = true
					$pop_up.start()
				elif Global.coins >= 1000:
					Global.coins -= 1000
					Global.fruits += 30
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					winned = 30
				else:
					$buy/cant_buy.text = "You don't have enough coins!"
					$buy/cant_buy.visible = true
					$pop_up.start()
					$buy/buy.visible = false
					Global.buying = false
					Global.item = ""
					buy = ""
		
		if buy == "true":
			$reward/reward/rt/fruit.visible = true
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



func _on_fruit_1_button_up():
	Global.buying = true
	Global.item = "fruit 1"


func _on_fruits_3_button_up():
	Global.buying = true
	Global.item = "fruit 3"


func _on_fruits_5_button_up():
	Global.buying = true
	Global.item = "fruit 5"


func _on_fruits_10_button_up():
	Global.buying = true
	Global.item = "fruit 10"


func _on_fruits_20_button_up():
	Global.buying = true
	Global.item = "fruit 20"


func _on_fruits_30_button_up():
	Global.buying = true
	Global.item = "fruit 30"


func _on_pop_up_timeout():
	$buy/cant_buy.visible = false
	$pop_up.stop()

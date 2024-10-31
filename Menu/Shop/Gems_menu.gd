extends Node2D

var buy = ""
var gems = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.buying == true:
		
		if Global.item == "gems 30":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
				gems = 30
		if Global.item == "gems 70":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
				gems = 70
		if Global.item == "gems 150":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
				gems = 150
		if Global.item == "gems 320":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
				gems = 320
		if Global.item == "gems 660":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
				gems = 660
		if Global.item == "gems 1350":
			$buy/buy.visible = true
			if buy == "false":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
			elif buy == "true":
				$buy/buy.visible = false
				Global.buying = false
				Global.item = ""
				buy = ""
				gems = 1350
	else:
		$buy/buy.visible = false
		Global.buying = false
		Global.item = ""
		buy = ""


func _on_no_button_button_up():
	buy = "false"


func _on_buy_button_button_up():
	buy = "true"



func _on_gems_30_button_up():
	Global.buying = true
	Global.item = "gems 30"


func _on_gems_70_button_up():
	Global.buying = true
	Global.item = "gems 70"


func _on_gems_150_button_up():
	Global.buying = true
	Global.item = "gems 150"


func _on_gems_320_button_up():
	Global.buying = true
	Global.item = "gems 320"


func _on_gems_660_button_up():
	Global.buying = true
	Global.item = "gems 660"


func _on_gems_1350_button_up():
	Global.buying = true
	Global.item = "gems 1350"


func _on_pop_up_timeout():
	$buy/cant_buy.visible = false
	$pop_up.stop()

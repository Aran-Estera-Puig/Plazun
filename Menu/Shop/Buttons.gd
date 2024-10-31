extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_coins_button_button_up():
	$Coins_selector/ColorRect.visible = false
	$Coins_selector/Coins.horizontal_alignment = 2
	Global.button_down = "coins"
	Global.buying = false
	
	$Fruits_selector/ColorRect.visible = true
	$Fruits_selector/Fruits.horizontal_alignment = 1
	$Chests_selector/ColorRect.visible = true
	$Chests_selector/Chests.horizontal_alignment = 1
	$Gems_selector/ColorRect.visible = true
	$Gems_selector/Gems.horizontal_alignment = 1
	$Extras_selector/ColorRect.visible = true
	$Extras_selector/Extras.horizontal_alignment = 1


func _on_fruits_button_button_up():
	$Fruits_selector/ColorRect.visible = false
	$Fruits_selector/Fruits.horizontal_alignment = 2
	Global.button_down = "fruits"
	Global.buying = false
	
	$Coins_selector/ColorRect.visible = true
	$Coins_selector/Coins.horizontal_alignment = 1
	$Chests_selector/ColorRect.visible = true
	$Chests_selector/Chests.horizontal_alignment = 1
	$Gems_selector/ColorRect.visible = true
	$Gems_selector/Gems.horizontal_alignment = 1
	$Extras_selector/ColorRect.visible = true
	$Extras_selector/Extras.horizontal_alignment = 1


func _on_chests_button_button_up():
	$Chests_selector/ColorRect.visible = false
	$Chests_selector/Chests.horizontal_alignment = 2
	Global.button_down = "chests"
	Global.buying = false
	
	$Coins_selector/ColorRect.visible = true
	$Coins_selector/Coins.horizontal_alignment = 1
	$Fruits_selector/ColorRect.visible = true
	$Fruits_selector/Fruits.horizontal_alignment = 1
	$Gems_selector/ColorRect.visible = true
	$Gems_selector/Gems.horizontal_alignment = 1
	$Extras_selector/ColorRect.visible = true
	$Extras_selector/Extras.horizontal_alignment = 1


func _on_gems_button_button_up():
	$Gems_selector/ColorRect.visible = false
	$Gems_selector/Gems.horizontal_alignment = 2
	Global.button_down = "gems"
	Global.buying = false
	
	$Coins_selector/ColorRect.visible = true
	$Coins_selector/Coins.horizontal_alignment = 1
	$Fruits_selector/ColorRect.visible = true
	$Fruits_selector/Fruits.horizontal_alignment = 1
	$Chests_selector/ColorRect.visible = true
	$Chests_selector/Chests.horizontal_alignment = 1
	$Extras_selector/ColorRect.visible = true
	$Extras_selector/Extras.horizontal_alignment = 1


func _on_extras_button_button_up():
	$Extras_selector/ColorRect.visible = false
	$Extras_selector/Extras.horizontal_alignment = 2
	Global.button_down = "extras"
	Global.buying = false
	
	$Coins_selector/ColorRect.visible = true
	$Coins_selector/Coins.horizontal_alignment = 1
	$Fruits_selector/ColorRect.visible = true
	$Fruits_selector/Fruits.horizontal_alignment = 1
	$Chests_selector/ColorRect.visible = true
	$Chests_selector/Chests.horizontal_alignment = 1
	$Gems_selector/ColorRect.visible = true
	$Gems_selector/Gems.horizontal_alignment = 1


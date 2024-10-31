extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$fruits.text = str(Global.fruits) + "/" + str(Global.max_fruits)

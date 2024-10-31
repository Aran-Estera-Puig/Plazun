extends Node2D

var moves = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moves == 1:
		$Sprite2D2.visible = false
		$Button2.visible = false
	elif moves == 5:
		$Sprite2D.visible = false
		$Button.visible = false
	else:
		$Sprite2D2.visible = true
		$Button2.visible = true
		$Sprite2D.visible = true
		$Button.visible = true


func _on_button_button_up():
	$Sprite2D.visible = true
	if moves < 5:
		position.x += 723
		moves += 1


func _on_button_2_button_up():
	$Sprite2D2.visible = true
	if moves != 1:
		position.x -= 723
		moves -= 1

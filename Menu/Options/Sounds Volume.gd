extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	$bar.size.x = 80 * Global.sounds_volumen


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_3_button_up():
	if Global.sounds_volumen <= 0:
		pass
	else:
		Global.sounds_volumen -= 0.5
		$bar.size.x -= 40


func _on_button_4_button_up():
	if Global.sounds_volumen >= 5:
		pass
	else:
		Global.sounds_volumen += 0.5
		$bar.size.x += 40

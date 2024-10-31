extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	$bar.size.x = 80 * Global.music_volumen


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_up():
	if Global.music_volumen <= 0:
		pass
	else:
		Global.music_volumen -= 0.5
		$bar.size.x -= 40


func _on_button_2_button_up():
	if Global.music_volumen >= 5:
		pass
	else:
		Global.music_volumen += 0.5
		$bar.size.x += 40

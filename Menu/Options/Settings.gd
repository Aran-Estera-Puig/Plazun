extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$"music timer".start()
	$"menu music".play(Global.menu_music_timer)
	if Global.music_volumen == 0:
		$"menu music".set_volume_db((Global.music_volumen -10) * 10000)
	else:
		$"menu music".set_volume_db((Global.music_volumen -10) * 3)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.music_volumen == 0:
		$"menu music".set_volume_db((Global.music_volumen -10) * 10000)
	else:
		$"menu music".set_volume_db((Global.music_volumen -10) * 3)


func _on_menu_music_finished():
	Global.menu_music_timer = 0
	$"music timer".stop()
	$"music timer".start()
	$"menu music".play()


func _on_music_timer_timeout():
	Global.menu_music_timer += 0.05

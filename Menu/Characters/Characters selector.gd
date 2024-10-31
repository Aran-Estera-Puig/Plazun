extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	$"Node2D/music timer".start()
	$"Node2D/menu music".play(Global.menu_music_timer)
	if Global.music_volumen == 0:
		$"Node2D/menu music".set_volume_db((Global.music_volumen -10) * 10000)
	else:
		$"Node2D/menu music".set_volume_db((Global.music_volumen -10) * 3)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_menu_music_finished():
	Global.menu_music_timer = 0
	$"Node2D/music timer".stop()
	$"Node2D/music timer".start()
	$"Node2D/menu music".play()


func _on_music_timer_timeout():
	Global.menu_music_timer += 0.05

extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$bgk_movement.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_bgk_movement_timeout():
	if 384.375 - $bkg_1.position.x > 767.01:
		$bkg_1.position.x = 1129
	if 384.375 - $bkg_2.position.x > 767.01:
		$bkg_1.position.x = 1129
	$bkg_1.position.x -= 3
	$bkg_2.position.x -= 3
	$bgk_movement.start()

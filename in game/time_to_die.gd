extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$live_disminucer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$live.size.x = Global.live_count


func _on_live_disminucer_timeout():
	if Global.selected_character == "EquusZebra" and Global.EquusZebra == true:
		pass
	else:
		Global.live_count -= 10
	$live_disminucer.start()

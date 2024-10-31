extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_up():
	$Info.visible = true
	$exit_info.visible = true


func _on_exit_info_button_up():
	$Info.visible = false
	$exit_info.visible = false

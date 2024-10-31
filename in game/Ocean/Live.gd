extends Node2D


func _ready():
	$live_disminucer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$live.size.x = Global.live_count
	if Global.live_count <= -10:
		Global.live_count = 600
		Global.coins += Global.in_game_coins
		if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
			Global.fruits = Global.max_fruits
		else:
			Global.fruits += Global.in_game_fruits
		Global.in_trap = false
		Global.total_point_ocean += Global.in_game_points
		if Global.in_game_points > Global.max_ocean:
				Global.max_ocean = Global.in_game_points
		get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")


func _on_live_disminucer_timeout():
	if Global.in_trap == true:
		Global.live_count -= 10
		$live_disminucer.start()

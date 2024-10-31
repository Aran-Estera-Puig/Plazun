extends Area2D

var speed = -275
# Get the gravity from the project settings to be synced with RigidBody nodes.


func _process(delta):
	position.x += speed * delta



func _on_body_entered(body):
	if body.name == "Player_2":
		if Global.Pongo == true and Global.pongo_count == 1:
			Global.pongo_count = 0
			queue_free()
		elif Global.AnodorhynchusHyacinthinus == true or Global.AmbystomaMexicanum == true:
			pass
		elif Global.Folivora == true:
			speed = -speed
			Global.extra_coins += 1
		else:
			if Global.in_game_points >= 20:
				Global.in_game_fruits = int(Global.in_game_points / 20)
				if Global.fruits + Global.in_game_fruits > Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
			Global.coins += Global.in_game_coins
			Global.total_poins_jungle +=  Global.in_game_points
			if Global.in_game_points > Global.max_jungle:
				Global.max_jungle = Global.in_game_points
			get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")


func _on_area_entered(area):
	if area.name == "bullets_destroyer":
		queue_free()

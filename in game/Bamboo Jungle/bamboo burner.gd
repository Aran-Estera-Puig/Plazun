extends Node2D

@export var speed: float = 300.0
var direction: Vector2 = Vector2.ZERO
var direction_x=1

func _ready():
	$Timer.start()

func _process(delta):
	position += direction * speed * delta
	position.x += 0.2 * direction_x
	rotation -= 0.02
	$fire.rotation += 0.02

func _on_area_2d_body_entered(body):
	if body.name == "Player4":
		if Global.ElephasMaximus == true:
			pass
		elif Global.PongoPygmaeus == true:
			Global.in_game_points += 1
			queue_free()
		else:
			Global.coins += Global.in_game_coins
			if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
				Global.fruits = Global.max_fruits
			else:
				Global.fruits += Global.in_game_fruits
			Global.total_points_bamboo_jungle += Global.in_game_points
			if Global.in_game_points > Global.max_bamboo_jungle:
				Global.max_bamboo_jungle = Global.in_game_points
			get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")

func set_direction(new_direction: Vector2):
	direction = new_direction


func _on_area_2d_area_entered(area):
	if area.name == "Objects_deleter":
		queue_free()


func _on_timer_timeout():
	direction_x = -direction_x
	$Timer.start()

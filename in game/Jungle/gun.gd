extends Node2D

@export var bullet : PackedScene
var random_number = 0
var random_number2 = 0
var random_number3 = 0
var random_number4 = 0
var random_number5 = 0
var random_number6 = 0
var left_guns = [$gun1 , $gun2 , $gun3 , $gun4 , $gun5 , $gun6 , $gun7 , $gun8 , $gun9 , $gun10]
@export var round = 0

func _ready():
	$shoot_time.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_gun_body_entered(body):
	if body.name == "Player_2":
		pass

func shoot():
	round += 1
	random_number = RandomNumberGenerator.new().randi_range(1,10)
	random_number2 = RandomNumberGenerator.new().randi_range(1,10)
	random_number3 = RandomNumberGenerator.new().randi_range(1,10)
	if round <= 5:
		Global.in_game_points += 1
		random_number = RandomNumberGenerator.new().randi_range(1,10)
		var newbullet = bullet.instantiate()
		if random_number == 1:
			newbullet.global_position = $gun1/spawn_bullet.global_position
		elif random_number == 2:
			newbullet.global_position = $gun2/spawn_bullet.global_position
		elif random_number == 3:
			newbullet.global_position = $gun3/spawn_bullet.global_position
		elif random_number == 4:
			newbullet.global_position = $gun4/spawn_bullet.global_position
		elif random_number == 5:
			newbullet.global_position = $gun5/spawn_bullet.global_position
		elif random_number == 6:
			newbullet.global_position = $gun6/spawn_bullet.global_position
		elif random_number == 7:
			newbullet.global_position = $gun7/spawn_bullet.global_position
		elif random_number == 8:
			newbullet.global_position = $gun8/spawn_bullet.global_position
		elif random_number == 9:
			newbullet.global_position = $gun9/spawn_bullet.global_position
		else:
			newbullet.global_position = $gun10/spawn_bullet.global_position
		get_parent().add_child(newbullet)
	elif round <= 10:
		Global.in_game_points += 2
		var newbullet = bullet.instantiate()
		if random_number == 1:
			newbullet.global_position = $gun1/spawn_bullet.global_position
		elif random_number == 2:
			newbullet.global_position = $gun2/spawn_bullet.global_position
		elif random_number == 3:
			newbullet.global_position = $gun3/spawn_bullet.global_position
		elif random_number == 4:
			newbullet.global_position = $gun4/spawn_bullet.global_position
		elif random_number == 5:
			newbullet.global_position = $gun5/spawn_bullet.global_position
		elif random_number == 6:
			newbullet.global_position = $gun6/spawn_bullet.global_position
		elif random_number == 7:
			newbullet.global_position = $gun7/spawn_bullet.global_position
		elif random_number == 8:
			newbullet.global_position = $gun8/spawn_bullet.global_position
		elif random_number == 9:
			newbullet.global_position = $gun9/spawn_bullet.global_position
		else:
			newbullet.global_position = $gun10/spawn_bullet.global_position
		get_parent().add_child(newbullet)
		
		var newbullet2 = bullet.instantiate()
		if random_number2 == 1:
			newbullet2.global_position = $gun1/spawn_bullet.global_position
		elif random_number2 == 2:
			newbullet2.global_position = $gun2/spawn_bullet.global_position
		elif random_number2 == 3:
			newbullet2.global_position = $gun3/spawn_bullet.global_position
		elif random_number2 == 4:
			newbullet2.global_position = $gun4/spawn_bullet.global_position
		elif random_number2 == 5:
			newbullet2.global_position = $gun5/spawn_bullet.global_position
		elif random_number2 == 6:
			newbullet2.global_position = $gun6/spawn_bullet.global_position
		elif random_number2 == 7:
			newbullet2.global_position = $gun7/spawn_bullet.global_position
		elif random_number2 == 8:
			newbullet2.global_position = $gun8/spawn_bullet.global_position
		elif random_number2 == 9:
			newbullet2.global_position = $gun9/spawn_bullet.global_position
		else:
			newbullet2.global_position = $gun10/spawn_bullet.global_position
		get_parent().add_child(newbullet2)
	else:
		Global.in_game_points += 3
		var newbullet = bullet.instantiate()
		if random_number == 1:
			newbullet.global_position = $gun1/spawn_bullet.global_position
		elif random_number == 2:
			newbullet.global_position = $gun2/spawn_bullet.global_position
		elif random_number == 3:
			newbullet.global_position = $gun3/spawn_bullet.global_position
		elif random_number == 4:
			newbullet.global_position = $gun4/spawn_bullet.global_position
		elif random_number == 5:
			newbullet.global_position = $gun5/spawn_bullet.global_position
		elif random_number == 6:
			newbullet.global_position = $gun6/spawn_bullet.global_position
		elif random_number == 7:
			newbullet.global_position = $gun7/spawn_bullet.global_position
		elif random_number == 8:
			newbullet.global_position = $gun8/spawn_bullet.global_position
		elif random_number == 9:
			newbullet.global_position = $gun9/spawn_bullet.global_position
		else:
			newbullet.global_position = $gun10/spawn_bullet.global_position
		get_parent().add_child(newbullet)
		
		var newbullet2 = bullet.instantiate()
		if random_number2 == 1:
			newbullet2.global_position = $gun1/spawn_bullet.global_position
		elif random_number2 == 2:
			newbullet2.global_position = $gun2/spawn_bullet.global_position
		elif random_number2 == 3:
			newbullet2.global_position = $gun3/spawn_bullet.global_position
		elif random_number2 == 4:
			newbullet2.global_position = $gun4/spawn_bullet.global_position
		elif random_number2 == 5:
			newbullet2.global_position = $gun5/spawn_bullet.global_position
		elif random_number2 == 6:
			newbullet2.global_position = $gun6/spawn_bullet.global_position
		elif random_number2 == 7:
			newbullet2.global_position = $gun7/spawn_bullet.global_position
		elif random_number2 == 8:
			newbullet2.global_position = $gun8/spawn_bullet.global_position
		elif random_number2 == 9:
			newbullet2.global_position = $gun9/spawn_bullet.global_position
		else:
			newbullet2.global_position = $gun10/spawn_bullet.global_position
		get_parent().add_child(newbullet2)
		
		var newbullet3 = bullet.instantiate()
		if random_number3 == 1:
			newbullet3.global_position = $gun1/spawn_bullet.global_position
		elif random_number3 == 2:
			newbullet3.global_position = $gun2/spawn_bullet.global_position
		elif random_number3 == 3:
			newbullet3.global_position = $gun3/spawn_bullet.global_position
		elif random_number3 == 4:
			newbullet3.global_position = $gun4/spawn_bullet.global_position
		elif random_number3 == 5:
			newbullet3.global_position = $gun5/spawn_bullet.global_position
		elif random_number3 == 6:
			newbullet3.global_position = $gun6/spawn_bullet.global_position
		elif random_number3 == 7:
			newbullet3.global_position = $gun7/spawn_bullet.global_position
		elif random_number3 == 8:
			newbullet3.global_position = $gun8/spawn_bullet.global_position
		elif random_number3 == 9:
			newbullet3.global_position = $gun9/spawn_bullet.global_position
		else:
			newbullet3.global_position = $gun10/spawn_bullet.global_position
		get_parent().add_child(newbullet3)


func _on_shoot_time_timeout():
	shoot()
	$shoot_time.start()

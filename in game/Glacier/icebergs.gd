extends Node2D

var ice1 = false
var ice2 = false
var ice3 = false
var ice4 = false
var ice5 = false
var ice6 = false
var ice7 = false
var ice8 = false
var ice9 = false

var in1 = false
var in2 = false
var in3 = false
var in4 = false
var in5 = false
var in6 = false
var in7 = false
var in8 = false
var in9 = false

var round = 0

var numbers = [1,2,3,4,5,6,7,8,9]

var rng = RandomNumberGenerator.new()

var r1 = rng.randi_range(0 , 8)
var r2 = rng.randi_range(0 , 8)
var r3 = rng.randi_range(0 , 8)

var r4 = rng.randi_range(0 , 8)
var r5 = rng.randi_range(0 , 8)
var r6 = rng.randi_range(0 , 8)

var r7 = rng.randi_range(0 , 8)
var r8 = rng.randi_range(0 , 8)


# Called when the node enters the scene tree for the first time.
func _ready():
	ice1 = false
	ice2 = false
	ice3 = false
	ice4 = false
	ice5 = false
	ice6 = false
	ice7 = false
	ice8 = false
	ice9 = false

	in1 = false
	in2 = false
	in3 = false
	in4 = false
	in5 = false
	in6 = false
	in7 = false
	in8 = false
	in9 = false
	round = 0
	numbers = [1,2,3,4,5,6,7,8,9]
	$next_round.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if 1 not in numbers and in1 and $"1/Iceberg2".visible == false:
		if 2 in numbers and in2:
			pass
		elif 4 in numbers and in4:
			pass
		elif 5 in numbers and in5:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	if 2 not in numbers and in2 and $"2/Iceberg2".visible == false:
		if 1 in numbers and in1:
			pass
		elif 3 in numbers and in3:
			pass
		elif 4 in numbers and in4:
			pass
		elif 5 in numbers and in5:
			pass
		elif 6 in numbers and in6:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	if 3 not in numbers and in3 and $"3/Iceberg2".visible == false:
		if 2 in numbers and in2:
			pass
		elif 5 in numbers and in5:
			pass
		elif 6 in numbers and in6:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	if 4 not in numbers and in4 and $"4/Iceberg2".visible == false:
		if 1 in numbers and in1:
			pass
		elif 2 in numbers and in2:
			pass
		elif 5 in numbers and in5:
			pass
		elif 7 in numbers and in7:
			pass
		elif 8 in numbers and in8:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	if 5 not in numbers and in5 and $"5/Iceberg2".visible == false:
		if 1 in numbers and in1:
			pass
		elif 2 in numbers and in2:
			pass
		elif 3 in numbers and in3:
			pass
		elif 4 in numbers and in4:
			pass
		elif 6 in numbers and in6:
			pass
		elif 7 in numbers and in7:
			pass
		elif 8 in numbers and in8:
			pass
		elif 9 in numbers and in9:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	if 6 not in numbers and in6 and $"6/Iceberg2".visible == false:
		if 2 in numbers and in2:
			pass
		elif 3 in numbers and in3:
			pass
		elif 5 in numbers and in5:
			pass
		elif 8 in numbers and in8:
			pass
		elif 9 in numbers and in9:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	if 7 not in numbers and in7  and $"7/Iceberg2".visible == false:
		if 4 in numbers and in4:
			pass
		elif 6 in numbers and in6:
			pass
		elif 7 in numbers and in7:
			pass
		elif 8 in numbers and in8:
			pass
		elif 9 in numbers and in9:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	if 8 not in numbers and in8 and $"8/Iceberg2".visible == false:
		if 4 in numbers and in4:
			pass
		elif 5 in numbers and in5:
			pass
		elif 6 in numbers and in6:
			pass
		elif 7 in numbers and in7:
			pass
		elif 9 in numbers and in9:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")
	if 9 not in numbers and in9 and $"9/Iceberg2".visible == false:
		if 5 in numbers and in5:
			pass
		elif 6 in numbers and in6:
			pass
		elif 8 in numbers and in8:
			pass
		else:
			if Global.EmperorPenguin == true:
				pass
			else:
				Global.coins += Global.in_game_coins
				if Global.fruits + Global.in_game_fruits >= Global.max_fruits:
					Global.fruits = Global.max_fruits
				else:
					Global.fruits += Global.in_game_fruits
				Global.total_points_glacier += Global.in_game_points
				if Global.in_game_points > Global.max_glacier:
					Global.max_glacier = Global.in_game_points
				get_tree().change_scene_to_file("res://Scenes/Menu/menu.tscn")


func _on_next_round_timeout():
	numbers = [1,2,3,4,5,6,7,8,9]
	round += 1
	if round <= 5:
		r1 = rng.randi_range(0 , 8)
		numbers.remove_at(r1)
		r2 = rng.randi_range(0 , 7)
		numbers.remove_at(r2)
		r3 = rng.randi_range(0 , 6)
		numbers.remove_at(r3)
	elif round <= 10:
		r1 = rng.randi_range(0 , 8)
		numbers.remove_at(r1)
		r2 = rng.randi_range(0 , 7)
		numbers.remove_at(r2)
		r3 = rng.randi_range(0 , 6)
		numbers.remove_at(r3)
		r4 = rng.randi_range(0 , 5)
		numbers.remove_at(r4)
		r5 = rng.randi_range(0 , 4)
		numbers.remove_at(r5)
	elif round <= 15:
		r1 = rng.randi_range(0 , 8)
		numbers.remove_at(r1)
		r2 = rng.randi_range(0 , 7)
		numbers.remove_at(r2)
		r3 = rng.randi_range(0 , 6)
		numbers.remove_at(r3)
		r4 = rng.randi_range(0 , 5)
		numbers.remove_at(r4)
		r5 = rng.randi_range(0 , 4)
		numbers.remove_at(r5)
		r6 = rng.randi_range(0 , 3)
		numbers.remove_at(r6)
		r7 = rng.randi_range(0 , 2)
		numbers.remove_at(r7)
	else:
		r1 = rng.randi_range(0 , 8)
		numbers.remove_at(r1)
		r2 = rng.randi_range(0 , 7)
		numbers.remove_at(r2)
		r3 = rng.randi_range(0 , 6)
		numbers.remove_at(r3)
		r4 = rng.randi_range(0 , 5)
		numbers.remove_at(r4)
		r5 = rng.randi_range(0 , 4)
		numbers.remove_at(r5)
		r6 = rng.randi_range(0 , 3)
		numbers.remove_at(r6)
		r7 = rng.randi_range(0 , 2)
		numbers.remove_at(r7)
		r8 = rng.randi_range(0 , 1)
		numbers.remove_at(r8)
	
	if 1 not in numbers:
		$"1/Iceberg1".visible = false
		$"1/Iceberg2".visible = true
		$p1.emitting = true
	if 2 not in numbers:
		$"2/Iceberg1".visible = false
		$"2/Iceberg2".visible = true
		$p2.emitting = true
	if 3 not in numbers:
		$"3/Iceberg1".visible = false
		$"3/Iceberg2".visible = true
		$p3.emitting = true
	if 4 not in numbers:
		$"4/Iceberg1".visible = false
		$"4/Iceberg2".visible = true
		$p4.emitting = true
	if 5 not in numbers:
		$"5/Iceberg1".visible = false
		$"5/Iceberg2".visible = true
		$p5.emitting = true
	if 6 not in numbers:
		$"6/Iceberg1".visible = false
		$"6/Iceberg2".visible = true
		$p6.emitting = true
	if 7 not in numbers:
		$"7/Iceberg1".visible = false
		$"7/Iceberg2".visible = true
		$p7.emitting = true
	if 8 not in numbers:
		$"8/Iceberg1".visible = false
		$"8/Iceberg2".visible = true
		$p8.emitting = true
	if 9 not in numbers:
		$"9/Iceberg1".visible = false
		$"9/Iceberg2".visible = true
		$p9.emitting = true
	
	$playing.start()
	$next_round.stop()
		


func _on_playing_timeout():
	if 1 not in numbers:
		$"1/Iceberg2".visible = false
		$p1.emitting = true
		$p1.emitting = true
	if 2 not in numbers:
		$"2/Iceberg2".visible = false
		$p2.emitting = true
		$p2.emitting = true
	if 3 not in numbers:
		$"3/Iceberg2".visible = false
		$p3.emitting = true
		$p3.emitting = true
	if 4 not in numbers:
		$"4/Iceberg2".visible = false
		$p4.emitting = true
		$p4.emitting = true
	if 5 not in numbers:
		$"5/Iceberg2".visible = false
		$p5.emitting = true
		$p5.emitting = true
	if 6 not in numbers:
		$"6/Iceberg2".visible = false
		$p6.emitting = true
		$p6.emitting = true
	if 7 not in numbers:
		$"7/Iceberg2".visible = false
		$p7.emitting = true
		$p7.emitting = true
	if 8 not in numbers:
		$"8/Iceberg2".visible = false
		$p8.emitting = true
		$p8.emitting = true
	if 9 not in numbers:
		$"9/Iceberg2".visible = false
		$p9.emitting = true
		$p9.emitting = true
	$restart.start()
	$playing.stop()


func _on_restart_timeout():
	numbers = [1,2,3,4,5,6,7,8,9]
	$"1/Iceberg1".visible = true
	$"1/Iceberg2".visible = true
	$"2/Iceberg1".visible = true
	$"2/Iceberg2".visible = true
	$"3/Iceberg1".visible = true
	$"3/Iceberg2".visible = true
	$"4/Iceberg1".visible = true
	$"4/Iceberg2".visible = true
	$"5/Iceberg1".visible = true
	$"5/Iceberg2".visible = true
	$"6/Iceberg1".visible = true
	$"6/Iceberg2".visible = true
	$"7/Iceberg1".visible = true
	$"7/Iceberg2".visible = true
	$"8/Iceberg1".visible = true
	$"8/Iceberg2".visible = true
	$"9/Iceberg1".visible = true
	$"9/Iceberg2".visible = true
	if round <= 5:
		Global.in_game_points += 3
		if Global.OdobenusRosmarus == true:
			Global.extra_coins += 3
	elif round <= 10:
		Global.in_game_points += 5
		if Global.OdobenusRosmarus == true:
			Global.extra_coins += 5
	elif round <= 15:
		Global.in_game_points += 7
		if Global.OdobenusRosmarus == true:
			Global.extra_coins += 7
	else:
		Global.in_game_points += 8
		if Global.OdobenusRosmarus == true:
			Global.extra_coins += 8
	$next_round.start()
	$restart.stop()


func _on__1_body_entered(body):
	in1 = true
func _on__1_body_exited(body):
	in1 = false


func _on__2_body_entered(body):
	in2 = true
func _on__2_body_exited(body):
	in2 = false


func _on__3_body_entered(body):
	in3 = true
func _on__3_body_exited(body):
	in3 = false


func _on__4_body_entered(body):
	in4 = true
func _on__4_body_exited(body):
	in4 = false


func _on__5_body_entered(body):
	in5 = true
func _on__5_body_exited(body):
	in5 = false


func _on__6_body_entered(body):
	in6 = true
func _on__6_body_exited(body):
	in6 = false


func _on__7_body_entered(body):
	in7 = true
func _on__7_body_exited(body):
	in7 = false


func _on__8_body_entered(body):
	in8 = true
func _on__8_body_exited(body):
	in8 = false


func _on__9_body_entered(body):
	in9 = true
func _on__9_body_exited(body):
	in9 = false

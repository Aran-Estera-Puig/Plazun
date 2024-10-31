extends Node2D

@export var speed: float = 150.0
var direction: Vector2 = Vector2.ZERO
var direction_x=1

var change = 1
var tap = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += direction * speed * delta
	position.x += 40 * change * delta
	if tap == 3:
		tap = 0
		Global.in_trap = false
		$Button.queue_free()
		$Traped.queue_free()
		$CPUParticles2D.emitting = true
		$particles.start()
	if speed == 0:
		position = Global.player_position - Vector2(350 , -120)


func _on_area_2d_body_entered(body):
	if Global.in_trap == true:
		pass
	elif body.name == "Player3":
		if Global.Delphinidae == true or Global.CarcharodonCarcharias == true:
			if Global.CarcharodonCarcharias == true:
				Global.extra_coins += 1
			$CPUParticles2D.emitting = true
			$particles.start()
			$Trap.queue_free()
			$Area2D.queue_free()
		elif Global.CheloniaMydas == true:
			pass
		else:
			Global.in_trap = true
			change = 0
			speed = 0
			$Trap.queue_free()
			$Area2D.queue_free()
			$Button.visible = true
			$Traped.visible = true


func set_direction(new_direction: Vector2):
	direction = new_direction


func _on_area_2d_area_entered(area):
	if area.name == "Objects_deleter":
		Global.in_game_points += 1
		queue_free()


func _on_timer_timeout():
	change = -change
	$Timer.start()


func _on_button_button_down():
	tap += 1


func _on_particles_timeout():
	queue_free()

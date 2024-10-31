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

func _on_area_2d_body_entered(body):
	if body.name == "Player4":
		if Global.AilurusFulgens ==  true:
			Global.in_game_points += 2
		else:
			Global.in_game_points += 1
		$Sprite2D.queue_free()
		$Area2D.queue_free()
		$CPUParticles2D.emitting = true
		$particles_time.start()

func set_direction(new_direction: Vector2):
	direction = new_direction


func _on_area_2d_area_entered(area):
	if area.name == "Objects_deleter":
		queue_free()


func _on_timer_timeout():
	direction_x = -direction_x
	$Timer.start()


func _on_particles_time_timeout():
	queue_free()

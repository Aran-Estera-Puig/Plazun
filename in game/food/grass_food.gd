extends Node2D

@export var speed: float = 350.0
var direction: Vector2 = Vector2.ZERO
var direction_y=1
var timer_on = false

func _ready():
	if Global.selected_character == "Rhinocerotidae":
		speed = 330
	elif Global.selected_character == "EquusZebra":
		speed = 390

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if timer_on == false:
		$bounces.start()
		timer_on = true
	position += direction * speed * delta
	position.y += 0.4 * direction_y

func _on_area_2d_body_entered(body):
	if Global.selected_character == "EquusZebra" and Global.EquusZebra == true:
			pass
	
	elif body.name == "Player_1":
		Global.live_count = 600
		queue_free()

func set_direction(new_direction: Vector2):
	direction = new_direction


func _on_bounces_timeout():
	direction_y *= -1
	$bounces.start()
	timer_on = false


func _on_area_2d_area_entered(area):
	if area.name == "Objects_deleter":
		queue_free()

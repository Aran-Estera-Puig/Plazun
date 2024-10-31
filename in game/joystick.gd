extends Area2D

class_name Joystick

var distance : float
var direction : Vector2
var index : int = -1
@onready var range = $big_circle
@onready var ball = $small_circle
@onready var radius = $CollisionShape2D.shape.radius


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed() and index == -1:
			if global_position.distance_to(event.position) <= radius:
				index = event.index
				ball.global_position = event.position
				direction = global_position.direction_to(ball.global_position) * distance / radius
				Global.joystick_pos = direction

		elif event.index == index:
			index = -1
			ball.position = Vector2.ZERO
			direction = Vector2.ZERO
			Global.joystick_pos = direction

	if event is InputEventScreenDrag:
		if event.index == index:
			distance = global_position.distance_to(event.position)
			if distance <= radius:
				ball.global_position = event.position
				direction = (global_position.direction_to(ball.global_position) * distance) / radius
				Global.joystick_pos = direction
			else:
				ball.global_position = global_position + (global_position.direction_to(event.position) * radius)
				Global.joystick_pos = global_position.direction_to(event.position)

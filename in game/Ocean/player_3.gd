extends CharacterBody2D


@export var SPEED = 150
@export var acceleration: int = 15
@export var friction: int = 10
var joystick : Joystick
var direction = Vector2()


func _ready():
	velocity = Vector2.ZERO
	Global.joystick_pos = Vector2.ZERO
	scale = Vector2(1 , 1)
	SPEED = 150

func _physics_process(delta):
	if Global.RhinocodonTypus == true:
		SPEED = 300
		scale = Vector2(0.65 , 0.65)
	else:
		SPEED = 150
		scale = Vector2(1 , 1)
	if joystick != null and is_instance_valid(joystick):
		direction = joystick.direction
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Global.joystick_pos == Vector2.ZERO:
		velocity = Vector2.ZERO
	else:
		velocity = Vector2(Global.joystick_pos * SPEED)
	
	if Global.RhinocodonTypus == true:
		if velocity.x > SPEED and Global.RhinocodonTypus == true:
			velocity.x = SPEED
		elif velocity.x < -SPEED and Global.RhinocodonTypus == true:
			velocity.x = -SPEED
		if velocity.y > SPEED and Global.RhinocodonTypus == true:
			velocity.y = SPEED
		elif velocity.y < -SPEED and Global.RhinocodonTypus == true:
			velocity.y = -SPEED
	
	else:
		if velocity.x > 150:
			velocity.x = 150
		elif velocity.x < -150:
			velocity.x = -150
		if velocity.y > 150:
			velocity.y = 150
		elif velocity.y < -150:
			velocity.y = -150
	
	if Global.in_trap == true:
		velocity = Vector2(0 , 125)
	
	
	move_and_slide()
	Global.player_position = position


func accelerate(vel):
	velocity = velocity.move_toward(Global.joystick_pos * vel,acceleration)

func apply_friction():
	velocity = velocity.move_toward(Vector2.ZERO,friction)


func _process(delta):
	pass

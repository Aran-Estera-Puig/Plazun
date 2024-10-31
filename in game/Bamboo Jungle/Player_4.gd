extends CharacterBody2D


@export var SPEED = 250
@export var acceleration: int = 15
@export var friction: int = 10
var joystick : Joystick
var direction = Vector2()


func _ready():
	velocity = Vector2.ZERO
	Global.joystick_pos = Vector2.ZERO
	scale = Vector2(1 , 1)
	SPEED = 250

func _physics_process(delta):
	if Global.PantheraTigrisTigris == true:
		SPEED = 350
	else:
		SPEED = 250
	
	if joystick != null and is_instance_valid(joystick):
		direction = joystick.direction
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Global.joystick_pos == Vector2.ZERO:
		velocity = Vector2.ZERO
	else:
		velocity = Vector2(Global.joystick_pos * SPEED)
		velocity.y = 0
	
	if Global.RhinocodonTypus == true:
		if velocity.x > SPEED and Global.RhinocodonTypus == true:
			velocity.x = SPEED
		elif velocity.x < -SPEED and Global.RhinocodonTypus == true:
			velocity.x = -SPEED
	
	else:
		if velocity.x > SPEED:
			velocity.x = SPEED
		elif velocity.x < -SPEED:
			velocity.x = -SPEED
	
	move_and_slide()


func accelerate(vel):
	velocity = velocity.move_toward(Global.joystick_pos * vel,acceleration)

func apply_friction():
	velocity = velocity.move_toward(Vector2.ZERO,friction)


func _process(delta):
	pass

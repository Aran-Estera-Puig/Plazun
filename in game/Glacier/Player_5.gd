extends CharacterBody2D


@export var SPEED = 150
@export var acceleration: int = 15
@export var friction: int = 10
var joystick : Joystick
var direction = Vector2()


func _ready():
	velocity = Vector2.ZERO
	Global.joystick_pos = Vector2.ZERO
	scale = Vector2(0.9 , 0.9)
	SPEED = 150

func _physics_process(delta):
	if Global.VulpesLagopus == true:
		SPEED = 250
		scale = Vector2(0.75 , 0.75)
	elif Global.UrsusMaritimus == true:
		SPEED = 150
		scale = Vector2(1.5 , 1.5)
	elif Global.HydrurgaLeptonyx == true:
		SPEED = 225
		scale = Vector2(1.3 , 1.3)
	else:
		SPEED = 150
		scale = Vector2(0.9 , 0.9)
		
	if joystick != null and is_instance_valid(joystick):
		direction = joystick.direction
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Global.joystick_pos == Vector2.ZERO:
		velocity = Vector2.ZERO
	else:
		velocity = Vector2(Global.joystick_pos * SPEED)
	
	if velocity.x > SPEED:
		velocity.x = SPEED
	elif velocity.x < -SPEED:
		velocity.x = -SPEED
	if velocity.y > SPEED:
		velocity.y = SPEED
	elif velocity.y < -SPEED:
		velocity.y = -SPEED
	
	
	
	move_and_slide()
	Global.player_position = position


func accelerate(vel):
	velocity = velocity.move_toward(Global.joystick_pos * vel,acceleration)

func apply_friction():
	velocity = velocity.move_toward(Vector2.ZERO,friction)


func _process(delta):
	pass

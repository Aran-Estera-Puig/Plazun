extends CharacterBody2D


@export var SPEED = 275
@export var acceleration: int = 15
@export var friction: int = 10
var up_on = false
var down_on = false
var joystick : Joystick
var direction = Vector2()

func _ready():
	Global.joystick_pos = Vector2.ZERO

func _physics_process(delta):
	if Global.selected_character == "AcinonyxJubatus" and Global.AcinonyxJubatus == true:
		SPEED = 350
		acceleration = 50
	else:
		SPEED = 275
		acceleration = 15
	
	"""# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_action_pressed("Up") and Input.is_action_pressed("Down"):
		apply_friction()
	elif Input.is_action_pressed("Up") or up_on == true:
		accelerate(SPEED)
	elif Input.is_action_pressed("Down") or down_on == true:
		accelerate(-SPEED)
	else:
		apply_friction()"""
	if joystick != null and is_instance_valid(joystick):
		direction = joystick.direction
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Global.joystick_pos == Vector2.ZERO:
		velocity = Vector2.ZERO
	else:
		velocity = Vector2(0 , Global.joystick_pos.y * SPEED)
	
	if velocity.x > 275 and Global.AcinonyxJubatus == false:
		velocity.x = 275
	elif velocity.x < -275 and Global.AcinonyxJubatus == false:
		velocity.x = -275
	if velocity.y > 275 and Global.AcinonyxJubatus == false:
		velocity.y = 275
	elif velocity.y < -275 and Global.AcinonyxJubatus == false:
		velocity.y = -275
	
	if velocity.x > 350 and Global.AcinonyxJubatus == true:
		velocity.x = 350
	elif velocity.x < -350 and Global.AcinonyxJubatus == true:
		velocity.x = -350
	if velocity.y > 350 and Global.AcinonyxJubatus == true:
		velocity.y = 350
	elif velocity.y < -350 and Global.AcinonyxJubatus == true:
		velocity.y = -350
	
	move_and_slide()

func _on_up_button_down():
	up_on = true
func _on_up_button_up():
	up_on = false

func _on_down_button_down():
	down_on = true
func _on_down_button_up():
	down_on = false

func accelerate(vel):
	velocity = velocity.move_toward(Vector2(0,vel),acceleration)

func apply_friction():
	velocity = velocity.move_toward(Vector2.ZERO,friction)

extends CharacterBody2D


@export var SPEED = 225
@export var acceleration: int = 15
@export var friction: int = 10
var joystick : Joystick
var direction = Vector2()
var the_best_helper_ever = true


func _ready():
	Global.joystick_pos = Vector2.ZERO

func _physics_process(delta):
	if Global.pongo_count == 0:
		SPEED = 125
		Global.pongo_count = 1
		the_best_helper_ever = false
		$pongo_slow.start()
	elif Global.PantheraOnca == true:
		SPEED = 325
	elif Global.PantheraOnca == false:
		if the_best_helper_ever == false:
			SPEED = 125
		else:
			SPEED = 225
	if joystick != null and is_instance_valid(joystick):
		direction = joystick.direction
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Global.joystick_pos == Vector2.ZERO:
		velocity = Vector2.ZERO
	else:
		velocity = Vector2(Global.joystick_pos * SPEED)
	
	if velocity.x > 225 and Global.PantheraOnca == false:
		velocity.x = 225
	elif velocity.x < -225 and Global.PantheraOnca == false:
		velocity.x = -225
	if velocity.y > 225 and Global.PantheraOnca == false:
		velocity.y = 225
	elif velocity.y < -225 and Global.PantheraOnca == false:
		velocity.y = -225
	
	if velocity.x > 325 and Global.PantheraOnca == true:
		velocity.x = 325
	elif velocity.x < -325 and Global.PantheraOnca == true:
		velocity.x = -325
	if velocity.y > 325 and Global.PantheraOnca == true:
		velocity.y = 325
	elif velocity.y < -325 and Global.PantheraOnca == true:
		velocity.y = -325
	
	if velocity.x > 125 and the_best_helper_ever == false:
		velocity.x = 125
	elif velocity.x < -125 and the_best_helper_ever == false:
		velocity.x = -125
	if velocity.y > 125 and the_best_helper_ever == false:
		velocity.y = 125
	elif velocity.y < -125 and the_best_helper_ever == false:
		velocity.y = -125
	
	move_and_slide()


func accelerate(vel):
	velocity = velocity.move_toward(Global.joystick_pos * vel,acceleration)

func apply_friction():
	velocity = velocity.move_toward(Vector2.ZERO,friction)


func _on_pongo_slow_timeout():
	SPEED = 225
	the_best_helper_ever = true

func _process(delta):
	if Global.AmbystomaMexicanum == true:
		$Character.visible = false
		$Axolot.visible = true
	else:
		$Character.visible = true
		$Axolot.visible = false

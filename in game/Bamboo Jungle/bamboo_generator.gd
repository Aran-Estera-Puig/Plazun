extends Node2D

@export var projectile_scene: PackedScene
@export var spawn_interval = 1.5
@export var spawn_area = Vector2(720, 0)
@export var projectile_direction = Vector2(0, 1) # Dirección predeterminada

# Called when the node enters the scene tree for the first time.
func _ready():
	_spawn_projectile()
	set_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if spawn_interval > 0:
		spawn_interval -= delta
		if spawn_interval <= 0:
			spawn_interval = 1.5  # Restablece el intervalo de generación
			_spawn_projectile()


func _spawn_projectile():
	if projectile_scene == null:
		print("Error: projectile_scene is null!")
		return

	var projectile_instance = projectile_scene.instantiate()
	var spawn_position = Vector2(
		randf() * spawn_area.x - spawn_area.x / 2,
		randf() * spawn_area.y - spawn_area.y / 2
	)
	projectile_instance.position = spawn_position
	
	if projectile_instance.has_method("set_direction"):
		projectile_instance.set_direction(projectile_direction)
	
	add_child(projectile_instance)

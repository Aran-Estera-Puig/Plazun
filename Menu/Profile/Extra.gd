extends Control

@export var extra_selector = PackedScene
var new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.extra == "blue cap":
			new_texture = preload("res://Assets/Menu/Shop/Extras/blue cap.png")
	elif Global.extra == "bow":
		new_texture = preload("res://Assets/Menu/Shop/Extras/bow.png")
	elif Global.extra == "Caesar's crown":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Caesar's crown.png")
	elif Global.extra == "Cap copter":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Cap copter.png")
	elif Global.extra == "Chef Hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Chef Hat.png")
	elif Global.extra == "Crown":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Crown.png")
	
	elif Global.extra == "Diadem":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Diadem.png")
	elif Global.extra == "English hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/English hat.png")
	elif Global.extra == "green cap":
		new_texture = preload("res://Assets/Menu/Shop/Extras/green cap.png")
	elif Global.extra == "Headphones":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Headphones.png")
	elif Global.extra == "Hearts Hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Hearts Hat.png")
	elif Global.extra == "magician hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/magician hat.png")
	
	elif Global.extra == "Military Helmet":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Military Helmet.png")
	elif Global.extra == "motorcycle helmet":
		new_texture = preload("res://Assets/Menu/Shop/Extras/motorcycle helmet.png")
	elif Global.extra == "Ninja headband":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Ninja headband.png")
	elif Global.extra == "panama hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/panama hat.png")
	elif Global.extra == "pirate hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/pirate hat.png")
	elif Global.extra == "Queen's Hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Queen's Hat.png")
	
	elif Global.extra == "rabbit hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/rabbit hat.png")
	elif Global.extra == "red cap":
		new_texture = preload("res://Assets/Menu/Shop/Extras/red cap.png")
	elif Global.extra == "Roses":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Roses.png")
	elif Global.extra == "Running Cap":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Running Cap.png")
	elif Global.extra == "santa hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/santa hat.png")
	elif Global.extra == "Straw hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Straw hat.png")
	
	elif Global.extra == "Swimming cap":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Swimming cap.png")
	elif Global.extra == "Viking Helmet":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Viking Helmet.png")
	elif Global.extra == "Warrior Helmet":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Warrior Helmet.png")
	elif Global.extra == "Witch Hat":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Witch Hat.png")
	elif Global.extra == "Worker helmet":
		new_texture = preload("res://Assets/Menu/Shop/Extras/Worker helmet.png")
	elif Global.extra == "yellow cap":
		new_texture = preload("res://Assets/Menu/Shop/Extras/yellow cap.png")
	
	if Global.extra == "":
		$fragment.visible = false
	else:
		$fragment.visible = true
		$fragment.texture = new_texture
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_up():
	get_tree().change_scene_to_packed(extra_selector)

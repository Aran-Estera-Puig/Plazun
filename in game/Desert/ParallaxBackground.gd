extends ParallaxBackground

# Velocidad de desplazamiento
var speed = Vector2(-100, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.selected_character == "Rhinocerotidae":
		speed = Vector2(-200,0)
		
	elif Global.selected_character == "LycaonPictus":
		speed = Vector2(-250,0)
		
	elif Global.selected_character == "EquusZebra":
		speed = Vector2(-300,0)
	
	elif Global.selected_character == "AcinonyxJubatus":
		speed = Vector2(-350,0)
	
	elif Global.selected_character == "PantheraLeo":
		speed = Vector2(-400,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_offset += speed * delta

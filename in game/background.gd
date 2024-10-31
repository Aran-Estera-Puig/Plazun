extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.biome == "Desert":
		$ParallaxBackground/ParallaxLayer/Jungle.visible = false
		$ParallaxBackground/ParallaxLayer/Ocean.visible = false
		$"ParallaxBackground/ParallaxLayer/Bamboo Jungle".visible = false
		$ParallaxBackground/ParallaxLayer/Glacier.visible = false
	elif Global.biome == "Jungle":
		$ParallaxBackground/ParallaxLayer/Desert.visible = false
		$ParallaxBackground/ParallaxLayer/Ocean.visible = false
		$"ParallaxBackground/ParallaxLayer/Bamboo Jungle".visible = false
		$ParallaxBackground/ParallaxLayer/Glacier.visible = false
	elif Global.biome == "Ocean":
		$ParallaxBackground/ParallaxLayer/Desert.visible = false
		$ParallaxBackground/ParallaxLayer/Jungle.visible = false
		$"ParallaxBackground/ParallaxLayer/Bamboo Jungle".visible = false
		$ParallaxBackground/ParallaxLayer/Glacier.visible = false
	elif Global.biome == "Bamboo Jungle":
		$ParallaxBackground/ParallaxLayer/Desert.visible = false
		$ParallaxBackground/ParallaxLayer/Ocean.visible = false
		$"ParallaxBackground/ParallaxLayer/Jungle".visible = false
		$ParallaxBackground/ParallaxLayer/Glacier.visible = false
	elif Global.biome == "Glacier":
		$ParallaxBackground/ParallaxLayer/Desert.visible = false
		$ParallaxBackground/ParallaxLayer/Ocean.visible = false
		$"ParallaxBackground/ParallaxLayer/Bamboo Jungle".visible = false
		$ParallaxBackground/ParallaxLayer/Jungle.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

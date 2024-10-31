extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Desert/total.text = str(Global.total_meters_desert) + "m"
	$Jungle/total.text = str(Global.total_poins_jungle) + "p"
	$Ocean/total.text = str(Global.total_point_ocean) + "p"
	$"Bamboo Jungle/total".text = str(Global.total_points_bamboo_jungle) + "p"
	$Glacier/total.text = str(Global.total_points_glacier) + "p"
	
	$Desert/points.text = str(Global.max_desert) + "m"
	$Jungle/points.text = str(Global.max_jungle) + "p"
	$Ocean/points.text = str(Global.max_ocean) + "p"
	$"Bamboo Jungle/points".text = str(Global.max_bamboo_jungle) + "p"
	$Glacier/points.text = str(Global.max_glacier) + "p"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

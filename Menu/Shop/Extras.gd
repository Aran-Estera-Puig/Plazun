extends Node2D

var page = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.page = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if page == 1:
		$texts/c1.color = "f3ecd4"
		$texts/c2.color = "e7dbaf"
		$texts/c3.color = "e7dbaf"
		$texts/c4.color = "e7dbaf"
		$texts/c5.color = "e7dbaf"
		$"1".visible = true
		$"2".visible = false
		$"3".visible = false
		$"4".visible = false
		$"5".visible = false
	elif page == 2:
		$texts/c1.color = "e7dbaf"
		$texts/c2.color = "f3ecd4"
		$texts/c3.color = "e7dbaf"
		$texts/c4.color = "e7dbaf"
		$texts/c5.color = "e7dbaf"
		$"1".visible = false
		$"2".visible = true
		$"3".visible = false
		$"4".visible = false
		$"5".visible = false
	elif page == 3:
		$texts/c1.color = "e7dbaf"
		$texts/c2.color = "e7dbaf"
		$texts/c3.color = "f3ecd4"
		$texts/c4.color = "e7dbaf"
		$texts/c5.color = "e7dbaf"
		$"1".visible = false
		$"2".visible = false
		$"3".visible = true
		$"4".visible = false
		$"5".visible = false
	elif page == 4:
		$texts/c1.color = "e7dbaf"
		$texts/c2.color = "e7dbaf"
		$texts/c3.color = "e7dbaf"
		$texts/c4.color = "f3ecd4"
		$texts/c5.color = "e7dbaf"
		$"1".visible = false
		$"2".visible = false
		$"3".visible = false
		$"4".visible = true
		$"5".visible = false
	elif page == 5:
		$texts/c1.color = "e7dbaf"
		$texts/c2.color = "e7dbaf"
		$texts/c3.color = "e7dbaf"
		$texts/c4.color = "e7dbaf"
		$texts/c5.color = "f3ecd4"
		$"1".visible = false
		$"2".visible = false
		$"3".visible = false
		$"4".visible = false
		$"5".visible = true
		


func _on_b_1_button_up():
	page = 1
	Global.page = 1


func _on_b_2_button_up():
	page = 2
	Global.page = 2

func _on_b_3_button_up():
	page = 3
	Global.page = 3


func _on_b_4_button_up():
	page = 4
	Global.page = 4


func _on_b_5_button_up():
	page = 5
	Global.page = 5

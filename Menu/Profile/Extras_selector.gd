extends Node2D

var page = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	page = 1
	Global.page = 1
	if Global.fragments1["blue cap"] < 20:
		$Fragments/c1.visible = true
	else:
		$Fragments/c1.visible = false
	$Fragments/l1.text = str(Global.fragments1["blue cap"]) + "/20"
	
	if Global.fragments1["bow"] < 20:
		$Fragments/c2.visible = true
	else:
		$Fragments/c2.visible = false
	$Fragments/l2.text = str(Global.fragments1["bow"]) + "/20"
	
	if Global.fragments1["Caesar's crown"] < 20:
		$Fragments/c3.visible = true
	else:
		$Fragments/c3.visible = false
	$Fragments/l3.text = str(Global.fragments1["Caesar's crown"]) + "/20"
	
	if Global.fragments1["Cap copter"] < 20:
		$Fragments/c4.visible = true
	else:
		$Fragments/c4.visible = false
	$Fragments/l4.text = str(Global.fragments1["Cap copter"]) + "/20"
	
	if Global.fragments1["Chef Hat"] < 20:
		$Fragments/c5.visible = true
	else:
		$Fragments/c5.visible = false
	$Fragments/l5.text = str(Global.fragments1["Chef Hat"]) + "/20"
	
	if Global.fragments1["Crown"] < 20:
		$Fragments/c6.visible = true
	else:
		$Fragments/c6.visible = false
	$Fragments/l6.text = str(Global.fragments1["Crown"]) + "/20"


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
	if Global.page == 1:
		Global.extra = "blue cap"
	elif Global.page == 2:
		Global.extra = "Diadem"
	elif Global.page == 3:
		Global.extra = "Military Helmet"
	elif Global.page == 4:
		Global.extra = "rabbit hat"
	elif Global.page == 5:
		Global.extra = "Swimming cap"
func _on_b_2_button_up():
	if Global.page == 1:
		Global.extra = "bow"
	elif Global.page == 2:
		Global.extra = "English hat"
	elif Global.page == 3:
		Global.extra = "motorcycle helmet"
	elif Global.page == 4:
		Global.extra = "red cap"
	elif Global.page == 5:
		Global.extra = "Viking Helmet"
func _on_b_3_button_up():
	if Global.page == 1:
		Global.extra = "Caesar's crown"
	elif Global.page == 2:
		Global.extra = "green cap"
	elif Global.page == 3:
		Global.extra = "Ninja headband"
	elif Global.page == 4:
		Global.extra = "Roses"
	elif Global.page == 5:
		Global.extra = "Warrior Helmet"
func _on_b_4_button_up():
	if Global.page == 1:
		Global.extra = "Cap copter"
	elif Global.page == 2:
		Global.extra = "Headphones"
	elif Global.page == 3:
		Global.extra = "panama hat"
	elif Global.page == 4:
		Global.extra = "Running Cap"
	elif Global.page == 5:
		Global.extra = "Witch Hat"
func _on_b_5_button_up():
	if Global.page == 1:
		Global.extra = "Chef Hat"
	elif Global.page == 2:
		Global.extra = "Hearts Hat"
	elif Global.page == 3:
		Global.extra = "pirate hat"
	elif Global.page == 4:
		Global.extra = "santa hat"
	elif Global.page == 5:
		Global.extra = "Worker helmet"
func _on_b_6_button_up():
	if Global.page == 1:
		Global.extra = "Crown"
	elif Global.page == 2:
		Global.extra = "magician hat"
	elif Global.page == 3:
		Global.extra = "Queen's Hat"
	elif Global.page == 4:
		Global.extra = "Straw hat"
	elif Global.page == 5:
		Global.extra = "yellow cap"


func _on_p_1_button_up():
	page = 1
	Global.page = 1
	if Global.fragments1["blue cap"] < 20:
		$Fragments/c1.visible = true
	else:
		$Fragments/c1.visible = false
	$Fragments/l1.text = str(Global.fragments1["blue cap"]) + "/20"
	
	if Global.fragments1["bow"] < 20:
		$Fragments/c2.visible = true
	else:
		$Fragments/c2.visible = false
	$Fragments/l2.text = str(Global.fragments1["bow"]) + "/20"
	
	if Global.fragments1["Caesar's crown"] < 20:
		$Fragments/c3.visible = true
	else:
		$Fragments/c3.visible = false
	$Fragments/l3.text = str(Global.fragments1["Caesar's crown"]) + "/20"
	
	if Global.fragments1["Cap copter"] < 20:
		$Fragments/c4.visible = true
	else:
		$Fragments/c4.visible = false
	$Fragments/l4.text = str(Global.fragments1["Cap copter"]) + "/20"
	
	if Global.fragments1["Chef Hat"] < 20:
		$Fragments/c5.visible = true
	else:
		$Fragments/c5.visible = false
	$Fragments/l5.text = str(Global.fragments1["Chef Hat"]) + "/20"
	
	if Global.fragments1["Crown"] < 20:
		$Fragments/c6.visible = true
	else:
		$Fragments/c6.visible = false
	$Fragments/l6.text = str(Global.fragments1["Crown"]) + "/20"
func _on_p_2_button_up():
	page = 2
	Global.page = 2
	if Global.fragments2["Diadem"] < 20:
		$Fragments/c1.visible = true
	else:
		$Fragments/c1.visible = false
	$Fragments/l1.text = str(Global.fragments2["Diadem"]) + "/20"
	
	if Global.fragments2["English hat"] < 20:
		$Fragments/c2.visible = true
	else:
		$Fragments/c2.visible = false
	$Fragments/l2.text = str(Global.fragments2["English hat"]) + "/20"
	
	if Global.fragments2["green cap"] < 20:
		$Fragments/c3.visible = true
	else:
		$Fragments/c3.visible = false
	$Fragments/l3.text = str(Global.fragments2["green cap"]) + "/20"
	
	if Global.fragments2["Headphones"] < 20:
		$Fragments/c4.visible = true
	else:
		$Fragments/c4.visible = false
	$Fragments/l4.text = str(Global.fragments2["Headphones"]) + "/20"
	
	if Global.fragments2["Hearts Hat"] < 20:
		$Fragments/c5.visible = true
	else:
		$Fragments/c5.visible = false
	$Fragments/l5.text = str(Global.fragments2["Hearts Hat"]) + "/20"
	
	if Global.fragments2["magician hat"] < 20:
		$Fragments/c6.visible = true
	else:
		$Fragments/c6.visible = false
	$Fragments/l6.text = str(Global.fragments2["magician hat"]) + "/20"
	
func _on_p_3_button_up():
	page = 3
	Global.page = 3
	if Global.fragments3["Military Helmet"] < 20:
		$Fragments/c1.visible = true
	else:
		$Fragments/c1.visible = false
	$Fragments/l1.text = str(Global.fragments3["Military Helmet"]) + "/20"
	
	if Global.fragments3["motorcycle helmet"] < 20:
		$Fragments/c2.visible = true
	else:
		$Fragments/c2.visible = false
	$Fragments/l2.text = str(Global.fragments3["motorcycle helmet"]) + "/20"
	
	if Global.fragments3["Ninja headband"] < 20:
		$Fragments/c3.visible = true
	else:
		$Fragments/c3.visible = false
	$Fragments/l3.text = str(Global.fragments3["Ninja headband"]) + "/20"
	
	if Global.fragments3["panama hat"] < 20:
		$Fragments/c4.visible = true
	else:
		$Fragments/c4.visible = false
	$Fragments/l4.text = str(Global.fragments3["panama hat"]) + "/20"
	
	if Global.fragments3["pirate hat"] < 20:
		$Fragments/c5.visible = true
	else:
		$Fragments/c5.visible = false
	$Fragments/l5.text = str(Global.fragments3["pirate hat"]) + "/20"
	
	if Global.fragments3["Queen's Hat"] < 20:
		$Fragments/c6.visible = true
	else:
		$Fragments/c6.visible = false
	$Fragments/l6.text = str(Global.fragments3["Queen's Hat"]) + "/20"
	
func _on_p_4_button_up():
	page = 4
	Global.page = 4
	if Global.fragments4["rabbit hat"] < 20:
		$Fragments/c1.visible = true
	else:
		$Fragments/c1.visible = false
	$Fragments/l1.text = str(Global.fragments4["rabbit hat"]) + "/20"
	
	if Global.fragments4["red cap"] < 20:
		$Fragments/c2.visible = true
	else:
		$Fragments/c2.visible = false
	$Fragments/l2.text = str(Global.fragments4["red cap"]) + "/20"
	
	if Global.fragments4["Roses"] < 20:
		$Fragments/c3.visible = true
	else:
		$Fragments/c3.visible = false
	$Fragments/l3.text = str(Global.fragments4["Roses"]) + "/20"
	
	if Global.fragments4["Running Cap"] < 20:
		$Fragments/c4.visible = true
	else:
		$Fragments/c4.visible = false
	$Fragments/l4.text = str(Global.fragments4["Running Cap"]) + "/20"
	
	if Global.fragments4["santa hat"] < 20:
		$Fragments/c5.visible = true
	else:
		$Fragments/c5.visible = false
	$Fragments/l5.text = str(Global.fragments4["santa hat"]) + "/20"
	
	if Global.fragments4["Straw hat"] < 20:
		$Fragments/c6.visible = true
	else:
		$Fragments/c6.visible = false
	$Fragments/l6.text = str(Global.fragments4["Straw hat"]) + "/20"
	
func _on_p_5_button_up():
	page = 5
	Global.page = 5
	if Global.fragments5["Swimming cap"] < 20:
		$Fragments/c1.visible = true
	else:
		$Fragments/c1.visible = false
	$Fragments/l1.text = str(Global.fragments5["Swimming cap"]) + "/20"
	
	if Global.fragments5["Viking Helmet"] < 20:
		$Fragments/c2.visible = true
	else:
		$Fragments/c2.visible = false
	$Fragments/l2.text = str(Global.fragments5["Viking Helmet"]) + "/20"
	
	if Global.fragments5["Warrior Helmet"] < 20:
		$Fragments/c3.visible = true
	else:
		$Fragments/c3.visible = false
	$Fragments/l3.text = str(Global.fragments5["Warrior Helmet"]) + "/20"
	
	if Global.fragments5["Witch Hat"] < 20:
		$Fragments/c4.visible = true
	else:
		$Fragments/c4.visible = false
	$Fragments/l4.text = str(Global.fragments5["Witch Hat"]) + "/20"
	
	if Global.fragments5["Worker helmet"] < 20:
		$Fragments/c5.visible = true
	else:
		$Fragments/c5.visible = false
	$Fragments/l5.text = str(Global.fragments5["Worker helmet"]) + "/20"
	
	if Global.fragments5["yellow cap"] < 20:
		$Fragments/c6.visible = true
	else:
		$Fragments/c6.visible = false
	$Fragments/l6.text = str(Global.fragments5["yellow cap"]) + "/20"
	

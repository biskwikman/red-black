#ToBalcony.gd
extends Area2D

signal change_area_entered()
var entered = false

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	if entered == true:
		pass
	else:
		for body in bodies:
			if body.name == "Player":
				emit_signal("change_area_entered")
				entered = true
				#get_tree().change_scene("Balcony.tscn")

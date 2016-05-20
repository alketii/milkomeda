extends Node2D

var star = preload("res://objects/star/star.tscn")
var meteor_small = preload("res://objects/meteor/meteor_small.tscn")
var meteor_big = preload("res://objects/meteor/meteor_big.tscn")

func _ready():
	randomize()

func _on_star_creator_timeout():
	var star_new = star.instance()
	star_new.set_pos(Vector2(randi()%720,0))
	star_new.get_node("sprites").set_frame(randi()%2)
	star_new.speed = (randi()%5)+5
	get_node("stars").add_child(star_new)

func _on_meteor_creator_timeout():
	var meteor_new
	var meteor_type = randi() % 4
	if meteor_type == 0:
		meteor_new = meteor_big.instance()
	else:
		meteor_new = meteor_small.instance()
	meteor_new.set_pos(Vector2(randi()%720,-20))
	get_node("meteors").add_child(meteor_new)
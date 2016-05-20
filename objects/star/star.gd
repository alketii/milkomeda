extends KinematicBody2D

var speed = 10

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	if get_pos().y < 1280:
		move(Vector2(0,speed))
	else:
		queue_free()
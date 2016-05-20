extends KinematicBody2D

func _ready():
	set_process_input(true)
	set_fixed_process(true)
	
func _input(event):
	set_pos(Vector2(event.pos.x,650))
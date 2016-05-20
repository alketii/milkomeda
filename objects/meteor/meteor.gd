extends RigidBody2D


func _ready():
	set_linear_velocity(Vector2((randi()%80)-40,(randi()%100)+100))
	set_angular_velocity(randi()%20)
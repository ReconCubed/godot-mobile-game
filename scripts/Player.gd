extends KinematicBody2D

export (int) var speed = 300

var target = Vector2()
var velocity = Vector2()

func _input(event):
	if event.is_action_pressed('click'):
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = (target - position).normalized() * speed
	
	if (target - position).length() > 5:
		velocity = move_and_slide(velocity)


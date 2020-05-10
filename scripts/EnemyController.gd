extends KinematicBody2D

export (int) var speed = 200

onready var diamond = get_tree().get_root().find_node("Diamond", true, false)
var diamondPos = Vector2(1080/2, 1920/2)
func _physics_process(delta):
	var dir = (diamondPos - global_position).normalized()
	move_and_slide(dir * speed)

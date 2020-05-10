extends KinematicBody2D

export (int) var speed = 200

onready var diamond = get_tree().get_root().find_node("Diamond", true, false)
var diamondPos = Vector2(1080/2, 1920/2)

func _physics_process(_delta):
	var dir = (diamondPos - global_position).normalized()
	move_and_slide(dir * speed)
	
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider.name == "Player":
			self.free()



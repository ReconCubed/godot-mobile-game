extends KinematicBody2D

export (int) var speed = 200

var diamondPos = Vector2(1080/2, 1920/2)

var counter

func _ready():
	counter = find_node_by_name(get_tree().get_root(), "ScoreLabel")

func _physics_process(_delta):
	var dir = (diamondPos - global_position).normalized()
	
	
	if (diamondPos - global_position).length() > 5:
		move_and_slide(dir * speed)
	
	
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		if collision.collider.name == "Player":
			self.queue_free()
			var curScore = counter.getScore()
			counter.setScore(curScore + 1)

func find_node_by_name(root, name):

	if(root.get_name() == name): return root

	for child in root.get_children():
		if(child.get_name() == name):
			return child

		var found = find_node_by_name(child, name)

		if(found): return found

	return null

extends Node2D


export (PackedScene) var enemy

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	spawn(enemy)
	$Timer.wait_time = rand_range(5, 15)

func spawn(enemy):
	var enemy_instance = enemy.instance()

	enemy_instance.set_position(position)
	
	get_node(".").add_child(enemy_instance)
	

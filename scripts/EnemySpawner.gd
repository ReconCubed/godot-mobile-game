extends Node2D


export (PackedScene) var enemy

var pos = Vector2(0,0)

func _ready():
	pos = position
	$Timer.wait_time = rand_range(2, 15)
	$Timer.start()

func _on_Timer_timeout():
	spawn(enemy)
	$Timer.wait_time = rand_range(10, 30)

func spawn(enemy):
	var enemy_instance = enemy.instance()

	enemy_instance.set_position(pos)
	
	get_tree().get_root().add_child(enemy_instance)
	

extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlayButton_pressed():
	get_tree().change_scene("res://scenes/GameScene.tscn");
	pass # Replace with function body.


func _on_Diamond_animation_finished():
	$Diamond.play("default")
	pass # Replace with function body.


func _on_DiamondAnimTimer_timeout():
	$Diamond.frame = 0 
	$Diamond.play("sparkle")
	$Diamond.playing = true

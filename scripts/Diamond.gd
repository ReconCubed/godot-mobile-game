extends KinematicBody2D

func _on_DiamondSprite_animation_finished():
	$DiamondSprite.play("default")

func _on_AnimationTimer_timeout():
	$DiamondSprite.frame = 0 
	$DiamondSprite.play("sparkle")
	$DiamondSprite.playing = true

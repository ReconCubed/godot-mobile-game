extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var jumpHeight = -1000
var player
# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_node("player")
	set_process_input(true)
	pass # Replace with function body.

func _input(event):
	#if event.type == InputEvent.MOUSE_BUTTON:
	if event is InputEventMouseButton:
		player.set_linear_velocity(Vector2(0, jumpHeight))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

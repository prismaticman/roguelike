extends Control

onready var animation_player = $AnimationPlayer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

	


func _on_start_pressed():
	var error = get_tree().change_scene("res://level/level1.tscn")
	assert(error==OK)
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.

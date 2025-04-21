extends Node2D


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://escena_joc.tscn")
func _process(delta: float) -> void:
	if Input.is_action_pressed("escape"):
		get_tree().change_scene_to_file("res://menu.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
	
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

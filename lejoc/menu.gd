extends Control


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://escena_joc.tscn")

func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://TUTORIAL.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

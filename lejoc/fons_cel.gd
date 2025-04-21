extends Node2D


func _on_final_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://final.tscn")

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED_HIDDEN

extends CharacterBody2D
var velocitat := 200
var gravetat = 1400
var t = 40
func _ready() -> void:
	position = Vector2(580, 600)
func _process(delta: float) -> void:
	var direccio = Vector2.ZERO
	direccio.x = Input.get_axis( "mou_esquerra", "mou_dreta")
	t -= 1*delta
	$Label.text = str("%0.01f"%t)
	velocity.x = direccio.x * velocitat
	velocity.y += gravetat * delta
	if Input.is_action_pressed("escape"):
		get_tree().change_scene_to_file("res://menu.tscn")
	if Input.is_action_pressed("return"):
		get_tree().change_scene_to_file("res://escena_joc.tscn")
	if Input.is_action_just_pressed("salta") and is_on_floor():
		velocity.y = -700
		
	move_and_slide()
	anima(velocity)

func anima(velocitat: Vector2) -> void:
	if velocitat.x < 0:
		$Sprite2D.flip_h = false
	if velocitat.x > 0:
		$Sprite2D.flip_h = true

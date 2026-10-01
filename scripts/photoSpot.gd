extends Area2D

@onready var sprite: Sprite2D = $Sprite2D

var camera_texture = preload("res://sprites/spot.png")
var check_texture = preload("res://sprites/spotcompletedt.png")

func _ready():
	update_sprite()
	
func update_sprite():
	var mission_id = int(name.trim_prefix("PhotoSpot"))
	if GameState.completed_missions.has(mission_id):
		sprite.texture = check_texture
	else:
		sprite.texture = camera_texture

func _on_body_entered(body):
	var mission_id = int(name.trim_prefix("PhotoSpot"))
	if body.name == "Frog" and not GameState.completed_missions.has(mission_id):
		GameState.current_mission = mission_id
		get_tree().change_scene_to_file("res://scenes/camera_mode/CameraMode.tscn")

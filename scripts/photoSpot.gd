extends Area2D

func _on_body_entered(body):
	var mission_id = int(name.trim_prefix("PhotoSpot"))
	if body.name == "Frog" and not GameState.completed_missions.has(mission_id):
		GameState.current_mission = mission_id
		get_tree().change_scene_to_file("res://scenes/camera_mode/CameraMode.tscn")

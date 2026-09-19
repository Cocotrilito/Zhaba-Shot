extends Area2D



func _on_body_entered(body):
	if body.name == "Frog":
		GameState.current_mission = "factory_pollution"
		get_tree().change_scene_to_file("res://scenes/camera_mode/CameraMode.tscn")

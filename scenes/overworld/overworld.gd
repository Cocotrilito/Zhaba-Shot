extends Node2D


func _process(_delta):
	if GameState.completed_missions.size() >= 3:
		get_tree().change_scene_to_file("res://scenes/WinScreen.tscn")

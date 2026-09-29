extends Node2D

@onready var background = $SceneBackground
@onready var aperture_slider = $ApertureSlider
@onready var shutter_slider = $ShutterSlider
@onready var iso_slider = $ISOSlider
@onready var frame_rect = $FrameRect
@onready var take_photo_button = $TakePhotoButton
@onready var score_label = $ScoreLabel




func _ready():
	aperture_slider.value = randi_range(0, 100)
	shutter_slider.value = randi_range(0, 100)
	iso_slider.value = randi_range(0, 100
	)
	aperture_slider.value_changed.connect(_on_settings_changed)
	shutter_slider.value_changed.connect(_on_settings_changed)
	iso_slider.value_changed.connect(_on_settings_changed)
	take_photo_button.pressed.connect(_on_take_photo_button_pressed)
	_on_settings_changed(0)
	

	
func _on_settings_changed(_value):
	var brightness = aperture_slider.value / 50.0
	background.material.set_shader_parameter("brightness_value", brightness)
	var blur = (100 - shutter_slider.value) / 100.0 * 0.02
	background.material.set_shader_parameter("blur_amount", blur)
	var noise = iso_slider.value / 100.0
	background.material.set_shader_parameter("noise_amount", noise)
	


func _on_take_photo_button_pressed():
	var frame_score = calculate_frame_score()
	var exposure_score = calculate_exposure_score()
	var total_score = (frame_score + exposure_score) / 2.0
	
	score_label.text = "Score: " + str(round(total_score * 100)) + "%"
	if total_score >= 0.7:
		if not GameState.completed_missions.has(GameState.current_mission):
			GameState.completed_missions.append(GameState.current_mission)
		await get_tree().create_timer(1.5).timeout
		get_tree().change_scene_to_file("res://scenes/overworld/overworld.tscn")
	
func calculate_frame_score():
	print("position", frame_rect.global_position, "size:", frame_rect.size)
	var frame_center = frame_rect.global_position + frame_rect.size / 2.0
	var screen_center = get_viewport_rect().size / 2.0
	var distance = frame_center.distance_to(screen_center)
	var max_distance = 300.0
	return clamp(1.0 - (distance / max_distance), 0.0, 1.0)





func calculate_exposure_score() -> float:
	var mission =  GameState.mission_data[GameState.current_mission]
	var ideal_brightness = mission["ideal_brighness"]
	var brightness_difference = abs((aperture_slider.value / 50.0) - ideal_brightness)
	return clamp(1.0 - brightness_difference, 0.0, 1.0)
	

	
	
	

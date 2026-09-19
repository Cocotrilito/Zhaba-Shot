extends Node2D

@onready var background = $SceneBackground
@onready var aperture_slider = $ApertureSlider
@onready var shutter_slider = $ShutterSlider
@onready var iso_slider = $ISOSlider

func _ready():
	aperture_slider.value_changed.connect(_on_settings_changed)
	shutter_slider.value_changed.connect(_on_settings_changed)
	iso_slider.value_changed.connect(_on_settings_changed)
	
func _on_settings_changed(_value):
	var brightness = aperture_slider.value / 50.0
	background.material.set_shader_parameter("brightness_value", brightness)
	var blur = (100 - shutter_slider.value) / 100.0 * 0.02
	background.material.set_shader_parameter("blur_amount", blur)

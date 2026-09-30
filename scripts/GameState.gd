extends Node

var current_mission: int = 0
var current_photo_data: Dictionary = {}
var camera_settings := {
	"aperture": 5.6,
	"shutter_speed": 1.0/125,
	"iso": 100
}
var completed_missions: Array = []
var mission_data = {
	1: {"ideal_brighness": 0.4, "ideal_blur": 0.0, "ideal_noise": 0.0, "hint": "The beach is blinding today."},
	2: {"ideal_brighness": 1.6, "ideal_blur": 0.0, "ideal_noise": 0.3, "hint": "Its dark down here. Raise the brightness"},
	3: {"ideal_brighness": 1.0, "ideal_blur": 0.0, "ideal_noise": 0.0, "hint": "Keep it steady and balanced"},
}

extends Node

var current_mission: int = 0
var current_photo_data: Dictionary = {}
var camera_settings := {
	"aperture": 5.6,
	"shutter_speed": 1.0/125,
	"iso": 100
}
var completed_missions: Array = []

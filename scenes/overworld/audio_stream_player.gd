extends AudioStreamPlayer

@onready var player = AudioStreamPlayer.new()

func _ready():
	add_child(player)
	player.stream = preload("res://Mr. Toad.mp3")
	player.volume_db = -10.0
	player.autoplay = true
	player.play()

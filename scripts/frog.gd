extends CharacterBody2D

const SPEED = 60.0

@onready var animated_sprite: AnimatedSprite2D = $Sprite2D


func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	move_and_slide()
	update_animation(direction)
	
	
func update_animation(direction):
	if direction == Vector2.ZERO:
		animated_sprite.stop()
		return
	if abs(direction.x) > abs(direction.y):
		if direction.x > 0:
			animated_sprite.play("left")
		else:
			animated_sprite.play("right")
	else:
		if direction.y > 0:
			animated_sprite.play("down")
		else:
			animated_sprite.play("up")
			

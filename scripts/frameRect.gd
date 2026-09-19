extends ColorRect

var dragging = false
var drag_offset = Vector2()


func _draw():
	var w = size.x
	var h = size.y
	draw_line(Vector2(w/3, 0), Vector2(w/3, h), Color.WHITE, 2)
	draw_line(Vector2(2*w/3, 0), Vector2(2*w/3, h), Color.WHITE, 2)
	draw_line(Vector2(0, h/3), Vector2(w, h/3), Color.WHITE, 2)
	draw_line(Vector2(0, 2*h/3), Vector2(w, 2*h/3), Color.WHITE, 2)


func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			dragging = true
			drag_offset = get_global_mouse_position() - global_position
		else:
			dragging = false
	elif event is InputEventMouseMotion and dragging:
		global_position = get_global_mouse_position() - drag_offset

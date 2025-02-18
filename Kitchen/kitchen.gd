extends Node2D

#OPENING AND CLOSING COMPONENTS UPON CLICK
#top left
func _on_top_left_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%TopLeft".frame + 1) % 2
			$"%TopLeft".set_frame_and_progress(current_frame, current_frame)

#top right
func _on_top_right_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%TopRight".frame + 1) % 2
			$"%TopRight".set_frame_and_progress(current_frame, current_frame)

#bottom left
func _on_bottom_left_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%BottomLeft".frame + 1) % 2
			$"%BottomLeft".set_frame_and_progress(current_frame, current_frame)

#bottom right
func _on_bottom_right_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%BottomRight".frame + 1) % 2
			$"%BottomRight".set_frame_and_progress(current_frame, current_frame)

#bottom middle 1
func _on_bottom_middle_1_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%BottomMiddle1".frame + 1) % 2
			$"%BottomMiddle1".set_frame_and_progress(current_frame, current_frame)

#bottom middle 2
func _on_bottom_middle_2_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%BottomMiddle2".frame + 1) % 2
			$"%BottomMiddle2".set_frame_and_progress(current_frame, current_frame)

#bottom middle 3
func _on_bottom_middle_3_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%BottomMiddle3".frame + 1) % 2
			$"%BottomMiddle3".set_frame_and_progress(current_frame, current_frame)


#fridge
func _on_fridge_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%Fridge".frame + 1) % 2
			$"%Fridge".set_frame_and_progress(current_frame, current_frame)

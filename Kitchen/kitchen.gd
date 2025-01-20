extends Node2D







func _on_bottom_middle_1_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%BottomMiddle1".frame + 1) % 2
			$"%BottomMiddle1".set_frame_and_progress(current_frame, current_frame)


func _on_bottom_middle_2_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%BottomMiddle2".frame + 1) % 2
			$"%BottomMiddle2".set_frame_and_progress(current_frame, current_frame)
			
func _on_bottom_middle_3_area_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
			var current_frame = ( $"%BottomMiddle3".frame + 1) % 2
			$"%BottomMiddle3".set_frame_and_progress(current_frame, current_frame)

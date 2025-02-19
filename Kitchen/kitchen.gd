extends Node2D

@onready var fridge_sprite: AnimatedSprite2D = %"Fridge"
@onready var top_left_sprite: AnimatedSprite2D = %"TopLeft"
@onready var top_right_sprite: AnimatedSprite2D = %"TopRight"
@onready var top_middle_sprite: AnimatedSprite2D = %"TopMiddle"
@onready var bottom_left_sprite: AnimatedSprite2D = %"BottomLeft"
@onready var bottom_right_sprite: AnimatedSprite2D = %"BottomRight"
@onready var bottom_middle_3_sprite: AnimatedSprite2D = %"BottomMiddle3"
@onready var bottom_middle_2_sprite: AnimatedSprite2D = %"BottomMiddle2"
@onready var bottom_middle_1_sprite: AnimatedSprite2D = %"BottomMiddle1"


@onready var all_sprites: Array = [fridge_sprite, 
								top_left_sprite, top_right_sprite, top_middle_sprite,
								bottom_left_sprite, bottom_right_sprite,
								bottom_middle_3_sprite, bottom_middle_2_sprite, bottom_middle_1_sprite]


#opening and closing components when clicked
func _on_animated_component_area_input_event(viewport: Node, event: InputEvent, shape_idx: int, component_sprite_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
		var component_sprite: AnimatedSprite2D = all_sprites[component_sprite_idx]
		var current_frame = ( component_sprite.frame + 1) % 2
		component_sprite.set_frame_and_progress(current_frame, current_frame)
		
		var component_list: ItemList = component_sprite.get_child(1)
		if (component_list.visible == true):
			component_list.visible = false
		else:
			component_list.visible = true

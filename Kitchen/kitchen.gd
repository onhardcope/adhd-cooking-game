extends Node2D

#setting up variables for each component sprite
@onready var fridge_sprite: AnimatedSprite2D = %"Fridge"
@onready var top_left_sprite: AnimatedSprite2D = %"TopLeft"
@onready var top_right_sprite: AnimatedSprite2D = %"TopRight"
@onready var top_middle_sprite: AnimatedSprite2D = %"TopMiddle"
@onready var bottom_left_sprite: AnimatedSprite2D = %"BottomLeft"
@onready var bottom_right_sprite: AnimatedSprite2D = %"BottomRight"
@onready var bottom_middle_3_sprite: AnimatedSprite2D = %"BottomMiddle3"
@onready var bottom_middle_2_sprite: AnimatedSprite2D = %"BottomMiddle2"
@onready var bottom_middle_1_sprite: AnimatedSprite2D = %"BottomMiddle1"

#array of all component sprites
@onready var all_sprites: Array = [fridge_sprite, 
								top_left_sprite, top_right_sprite, top_middle_sprite,
								bottom_left_sprite, bottom_right_sprite,
								bottom_middle_3_sprite, bottom_middle_2_sprite, bottom_middle_1_sprite]

#setting up variable for selection_list
@onready var selection_list: ItemList = %"SelectionList"

#index of the component that is open
#-1 if no component is open
var open_component_idx: int = -1

#opening and closing components when clicked
#showing and hiding component lists
func _on_component_input_event(viewport: Node, event: InputEvent, shape_idx: int, component_sprite_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
		var component_sprite: AnimatedSprite2D = all_sprites[component_sprite_idx]
		var component_list: ItemList = component_sprite.get_child(1)

		if (open_component_idx != component_sprite_idx):
			if (open_component_idx >= 0):
				var open_component_sprite: AnimatedSprite2D = all_sprites[open_component_idx]
				var open_component_list: ItemList = open_component_sprite.get_child(1)
				open_component_sprite.set_frame_and_progress(0, 0)
				open_component_list.visible = false
			
			component_sprite.set_frame_and_progress(1, 1)
			component_list.visible = true
			open_component_idx = component_sprite_idx
			
		else:
			component_sprite.set_frame_and_progress(0, 0)
			component_list.visible = false
			open_component_idx = -1
			
#show and hide selection list on icon click
func _on_show_selection_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
		print("yes")
		if (selection_list.visible):
			selection_list.visible = false
		else:
			selection_list.visible = true

#transfer item: FROM open component TO selection list
func _on_component_list_item_selected(index: int) -> void:
	var open_component_list: ItemList = all_sprites[open_component_idx].get_child(1)
	var ingredient_name: String = open_component_list.get_item_text(index)
	var ingredient_icon: Texture2D = open_component_list.get_item_icon(index)
	open_component_list.remove_item(index)
	selection_list.add_item(ingredient_name, ingredient_icon)

#transfer item: FROM selection list TO open component ONLY IF a component is open
func _on_selection_list_item_clicked(index: int, at_position: Vector2, mouse_button_index: int) -> void:
	if (open_component_idx >= 0):
		var open_component_list: ItemList = all_sprites[open_component_idx].get_child(1)
		var ingredient_name: String = selection_list.get_item_text(index)
		var ingredient_icon: Texture2D = selection_list.get_item_icon(index)
		selection_list.remove_item(index)
		open_component_list.add_item(ingredient_name, ingredient_icon)

extends Node2D

func _on_new_pressed() -> void:
	get_tree().change_scene_to_file("res://CreateSave/create_save.tscn")
	
func _on_quit_pressed() -> void:
	get_tree().quit()

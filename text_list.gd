@tool
extends VBoxContainer

signal last_index_reached

@export var base_color: Color
@export var highlight_color: Color

func _ready() -> void:
	prints(get_child_count())


func _on_app_index_updated(index:int) -> void:
	if index >= get_child_count():
		last_index_reached.emit()
		return
	for child in get_children():
		if child is TextEdit:
			if child.get_index() == index:
				child.add_theme_color_override('font_color', highlight_color)
			else:
				child.add_theme_color_override('font_color', base_color)
			

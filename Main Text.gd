@tool
extends TextEdit


func _on_app_index_updated(index: int) -> void:
	text = "sandwich: " + str(index)

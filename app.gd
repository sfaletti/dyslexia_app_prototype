@tool

extends Control

# @export var auto_play := false

signal index_updated(index: int)


@export var index: int = 0:
	set(new_index):
		index = new_index
		index_updated.emit(index)


func _on_audio_player_finished() -> void:
	if PlayState.is_playing:
		index += 1


func _on_text_list_last_index_reached() -> void:
	# auto_play = false
	PlayState.is_playing = false
	index = -1


func _on_play_button_pressed() -> void:
	# auto_play = true
	PlayState.is_playing = true
	index = 0


func _on_play_button_toggled(button_pressed: bool) -> void:
	PlayState.is_playing = button_pressed
	if button_pressed:
		index = 0
	else:
		index = -1

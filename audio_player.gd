@tool
extends AudioStreamPlayer

@export var tracks: Array[AudioStreamMP3]


func _on_app_index_updated(index: int) -> void:
	if index < tracks.size() and PlayState.is_playing:
		stream = tracks[index]
		play()


func _on_play_button_toggled(button_pressed:bool) -> void:
	if !button_pressed:
		stop()

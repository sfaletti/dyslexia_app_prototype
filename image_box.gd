@tool
extends TextureRect

@export var images: Array[CompressedTexture2D]


func _ready() -> void:
	texture = images[0]

func _on_app_index_updated(index: int) -> void:
	texture = images[clamp(index, 0, images.size())]

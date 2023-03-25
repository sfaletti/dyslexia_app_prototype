@tool

class_name Section
extends Container

@export var image: CompressedTexture2D
@export var text: String = "Some sample text"

func _ready() -> void:
	prints('ready thing')
	$image.texture = image
	$section_text.text = text

extends Node2D

@onready var area_2d: Area2D = $platform_large4/Area2D


@onready var rich_text_label: RichTextLabel = $CanvasLayer/RichTextLabel
@onready var timer: Timer = $CanvasLayer/Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass





func _on_area_2d_body_entered(body: Node2D) -> void:
	print("level complete")

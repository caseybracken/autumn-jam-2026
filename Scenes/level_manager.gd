extends Node2D

@onready var area_2d: Area2D = $platform_house/Area2D


@onready var rich_text_label: RichTextLabel = $CanvasLayer/RichTextLabel
@onready var timer: Timer = $CanvasLayer/Timer

@onready var elapsed_time: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	elapsed_time += delta
	var timer_text = "%02d:%05.2f"
	timer_text = timer_text % [floori(elapsed_time / 60.0), fmod(elapsed_time, 60.0)]
	rich_text_label.text = timer_text


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("level complete")
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")

extends Control

@export var announcer_lines: Array[AudioStream]

func _ready() -> void:
	pass # randomly generate loser text
	var texts = [
		"You were eliminated.",
		"Resistance was futile, anyway.",
		"Hey, at least you won't have to pay the electricity bill.",
		"You succumbed to the lazer.",
		"Splat!"
	]
	var loser_type: int = randi_range(0, 4)
	$RichTextLabel.text = texts[loser_type]
	$AudioStreamPlayer2.stream = announcer_lines[loser_type]
	$AudioStreamPlayer2.play()

func _on_timer_timeout() -> void:
	GameOverHandler.back_to_game()

extends Control

func _ready() -> void:
	pass # randomly generate loser text
	var texts = [
		"You were eliminated.",
		"Resistance was futile, anyway.",
		"Hey, at least you won't have to pay the electricity bill.",
		"You succumbed to the lazer.",
		"Splat!"
	]
	var loser_text: int = randi_range(0, 4)
	$RichTextLabel.text = texts[loser_text]

func _on_timer_timeout() -> void:
	GameOverHandler.back_to_game()

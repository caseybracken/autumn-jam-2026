extends Area2D

func _on_body_entered(body: Node2D) -> void:
	# only the player is on collision layer 2, so we can safely assume every collison is from the player
	GameOverHandler.game_over()

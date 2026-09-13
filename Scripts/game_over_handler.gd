extends Node

func game_over():
	# player got hit, so it's game over
	get_tree().change_scene_to_file("res://Scenes/loser.tscn")

func back_to_game():
	# player is humiliated enough. back to game
	get_tree().change_scene_to_file("res://Scenes/test_level.tscn")

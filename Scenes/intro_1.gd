extends Node2D

@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var audio_stream_player_2d_2: AudioStreamPlayer2D = $AudioStreamPlayer2D2


# Called when the node enters the scene tree for the first time.
func play():
	audio_stream_player_2d.play()
	if audio_stream_player_2d_2 != null:
		audio_stream_player_2d_2.play()

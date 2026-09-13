extends Node2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func play():
	animation_player.play("new_animation")
	audio_stream_player_2d.play()

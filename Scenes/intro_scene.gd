extends Node2D

@onready var intro_0: Node2D = $intro_0
@onready var intro_1: Node2D = $intro_1
@onready var intro_2: Node2D = $intro_2
@onready var intro_3: Node2D = $intro_3
@onready var intro_4: Node2D = $intro_4


func _on_timer_timeout() -> void:
	intro_0.visible = false
	intro_1.visible = true
	intro_1.play()


func _on_timer_2_timeout() -> void:
	intro_1.visible = false
	intro_2.visible = true
	intro_2.play()


func _on_timer_3_timeout() -> void:
	intro_2.visible = false
	intro_3.visible = true
	intro_3.play()
	

func _on_timer_4_timeout() -> void:
	intro_3.visible = false
	intro_4.visible = true

func _on_timer_final_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/platform_test_level.tscn")

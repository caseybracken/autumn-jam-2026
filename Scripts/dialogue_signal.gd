extends Node

signal advance_dialogue

func emit_advance_dialogue() -> void:
	print("emitting a signal to advance dialogue")
	advance_dialogue.emit()

extends Area2D

@export var dialogue: Dialogue

@onready var active = false
@onready var string_index = 0

func _ready() -> void:
	DialogueSignal.advance_dialogue.connect(next_dialogue)

func _on_body_entered(body: Node2D) -> void:
	active = true

func _on_body_exited(body: Node2D) -> void:
	active = false

func next_dialogue() -> void:
	if active == true:
		if string_index < dialogue.dialogue_strings.size():
			print(dialogue.dialogue_strings[string_index])
			string_index += 1
		else:
			print("...")

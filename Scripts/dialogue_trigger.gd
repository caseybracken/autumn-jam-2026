extends Area2D

@export var dialogue: Dialogue

@onready var active = false

func _ready() -> void:
	DialogueSignal.advance_dialogue.connect(next_dialogue)

func _on_body_entered(body: Node2D) -> void:
	active = true

func _on_body_exited(body: Node2D) -> void:
	active = false

func next_dialogue() -> void:
	if active == true:
		pass # here we change the dialogue sting

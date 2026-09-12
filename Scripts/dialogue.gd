class_name Dialogue
extends Resource

enum Speaker {PLAYER, NPC}

@export var speaker: Array[Speaker]
@export var dialogue_strings: Array[String]

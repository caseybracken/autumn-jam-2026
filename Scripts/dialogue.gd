@tool
class_name Dialogue
extends Resource

enum Speaker {PLAYER, NPC}

@export var speaker: Array[Speaker]
@export var dialogue_strings: Array[String]
@export var file_path: String

@export_tool_button("Import Strings", "String") var import_action = import_strings

func import_strings() -> void:
	var file = FileAccess.open(file_path, FileAccess.READ)
	var strings: Array[String] = []
	while file.get_position() < file.get_length():
		var line = file.get_line()
		strings.append(line)
	dialogue_strings = strings
	notify_property_list_changed()

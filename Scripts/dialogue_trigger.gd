extends Area2D

@export var timeline: DialogicTimeline
@export var playerNode: Node2D
@export var anarchistNode: Node2D
@export var aloofNode: Node2D
@export var hippyNode: Node2D

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	print("something happened")
	if event.is_action("left_click"):
		if Dialogic.current_timeline == null:
			var layout = Dialogic.start(timeline)
			layout.register_character(load("res://player character.dch"), playerNode)
			layout.register_character(load("res://Anarchist NPC.dch"), anarchistNode)
			layout.register_character(load("res://Aloof NPC.dch"), aloofNode)
			layout.register_character(load("res://Hippy NPC.dch"), hippyNode)
			get_viewport().set_input_as_handled()

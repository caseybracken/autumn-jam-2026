extends Area2D

@export var timeline: DialogicTimeline

func _on_body_entered(_body: Node2D) -> void:
	# run specific dialogic timeline
	if Dialogic.current_timeline == null:
		Dialogic.start(timeline)
	set_deferred("monitoring", false)
	print("plater entered dialogue trigger")

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		Dialogic.start_timeline(timeline)
		get_viewport().set_input_as_handled()

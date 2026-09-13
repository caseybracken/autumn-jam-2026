extends CharacterBody2D

@onready var jump_audio: AudioStreamPlayer2D = $jump_audio
@onready var walk_audio: AudioStreamPlayer2D = $WalkAudio
@onready var walk_loop = false

const SPEED = 300.0
const JUMP_VELOCITY = -600.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	var direction: float = 0.0
	if Dialogic.current_timeline == null:
		# Handle jump.
		if Input.is_action_just_pressed("ui_up") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			jump_audio.play()
			walk_audio.stop()

		direction = Input.get_axis("ui_left", "ui_right")
		if !walk_audio.playing and direction != 0.0 and is_on_floor():
			walk_audio.play()
		elif walk_audio.playing and direction == 0.0:
			walk_audio.stop()
	velocity.x = direction * SPEED

	move_and_slide()

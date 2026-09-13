extends Path2D

@export var alien_speed: float = 50.0

@onready var follower = $PathFollow2D

func _physics_process(delta: float) -> void:
	follower.progress += alien_speed * delta

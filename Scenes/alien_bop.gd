extends Sprite2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var my_random_number = rng.randf_range(0, .1)
	animation_player.seek(my_random_number)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

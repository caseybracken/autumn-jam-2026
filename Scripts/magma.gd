extends Polygon2D

func _ready() -> void:
	$EnemyCollider/CollisionPolygon2D.polygon = polygon

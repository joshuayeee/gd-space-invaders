extends CharacterBody2D

class_name Bullet

const SPEED: float = 400.0

func _physics_process(_delta: float) -> void:
	velocity = Vector2.UP * SPEED
	
	if (move_and_slide()):
		queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

extends CharacterBody2D

class_name Bullet

const SPEED: float = 500.0

func _physics_process(_delta: float) -> void:
	velocity = Vector2.UP * SPEED
	move_and_slide()

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

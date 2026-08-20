extends CharacterBody2D

class_name Alien

const SPEED: float = 300.0

func _physics_process(_delta: float) -> void:
	move_and_slide()

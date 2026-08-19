extends CharacterBody2D

class_name Player

const SPEED: float = 300.0
const BULLET = preload("uid://cl3y7nhmch4ao")

@export var level: Level = null
@export var bullet_manager: BulletManager = null

func _physics_process(_delta: float) -> void:
	var direction: float = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if (Input.is_action_just_pressed("shoot")):
		var bullet: Bullet = BULLET.instantiate()
		bullet.position = position
		bullet_manager.add_child(bullet)
	
	move_and_slide()

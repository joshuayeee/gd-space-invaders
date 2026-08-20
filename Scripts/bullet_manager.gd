extends Node2D

class_name BulletManager

var bullet_amount: int = 1

func add_bullet(bullet: Bullet):
	if (get_child_count() < bullet_amount):
		add_child(bullet)

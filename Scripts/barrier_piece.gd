extends Area2D

class_name BarrierPiece


func _on_body_entered(body: Node2D) -> void:
	body.queue_free()
	queue_free()

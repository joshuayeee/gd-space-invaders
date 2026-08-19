extends Node

class_name Main

var level: Level = null

func _ready() -> void:
	load_level("main_level")

func unload_level() -> void:
	if (level != null):
		level.queue_free()
		level = null

func load_level(level_name: String) -> void:
	unload_level()
	var level_path: String = "res://Scenes/Levels/%s.tscn" % level_name
	level = load(level_path).instantiate()
	level.main = self
	add_child(level)

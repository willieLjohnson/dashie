extends Label

func _process(delta: float) -> void:
	text = "%s %s %s^" % [Global.depth.x / 100, Global.depth.y / 100, Global.depth.z]

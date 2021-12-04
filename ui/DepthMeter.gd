extends Label

func _ready() -> void:
	Global.load_game()
	if Global.depth:
		text = str(Global.depth)
	else:
		text = "0^"
	
func _process(delta: float) -> void:
	if Global.depth > Global.greatest_depth:
		Global.greatest_depth = Global.depth
		

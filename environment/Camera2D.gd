extends Camera2D

var screen_shake_started = false
var shake_intensity = 0
var zoom_factor = 0.015
var velocity_factor = 1
var damp = 0.3


onready var base_zoom = zoom

func _ready() -> void:
	Global.camera = self
	
func _exit_tree() -> void:
	Global.camera = null
	
func _process(delta: float) -> void:
	velocity_factor = (1 + (Global.player.velocity.length() / 500))
	zoom = lerp(zoom, (base_zoom * velocity_factor), damp)
#
#	if screen_shake_started:
#		global_position += Vector2(rand_range(-shake_intensity, shake_intensity), rand_range(-shake_intensity, shake_intensity)) * delta
#	else:
#		global_position = lerp(global_position, Vector2(320, 180), damp)
		
func screen_shake(intensity, time):
	return
#	if intensity > shake_intensity:
#		zoom = (base_zoom * velocity_factor) - Vector2(intensity * zoom_factor, intensity * zoom_factor)
#		shake_intensity = intensity
#		$ScreenShakeTime.wait_time = time
#		$ScreenShakeTime.start()
#		screen_shake_started = true

func _on_ScreenShakeTime_timeout() -> void:
	screen_shake_started = false
	shake_intensity = 0

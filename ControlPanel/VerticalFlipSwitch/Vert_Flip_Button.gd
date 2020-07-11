extends Control

const SHADER = preload('res://ControlPanel/OutlineSprite.shader')

export(String) var Signal
var Button_signal = null


func _ready():
	material = ShaderMaterial.new()

	#$TopSprite.Signal = TopSignal

func _on_Control_mouse_entered():
	material.shader = SHADER

func _on_Control_mouse_exited():
	material.shader = null


func _on_Control_toggled(button_pressed):
	if button_pressed == true:
		Button_signal = Signal
	else:
		Button_signal = null

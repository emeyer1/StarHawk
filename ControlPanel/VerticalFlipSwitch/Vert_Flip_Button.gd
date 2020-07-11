extends Control

const SHADER = preload('res://ControlPanel/OutlineSprite.shader')

export(String) var TopSignal
export(String) var BottomSignal

func _ready():
	material = ShaderMaterial.new()

	#$TopSprite.Signal = TopSignal
	#$BottomSprite.Signal = BottomSignal

func _on_Control_mouse_entered():
	material.shader = SHADER

func _on_Control_mouse_exited():
	material.shader = null

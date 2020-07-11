extends TextureButton

const SHADER = preload('res://ControlPanel/OutlineSprite.shader')

export(String) var Signal

var Button_signal = null

# Called when the node enters the scene tree for the first time.
func _ready():
	material = ShaderMaterial.new()
	
	
	$Label.text = str(Signal)
	texture_normal = load('res://ControlPanel/PushButton/button_2test.png')
	texture_pressed = load('res://ControlPanel/PushButton/button_2test_P.png')
	
func _process(delta):
	if pressed:
		Button_signal = Signal
	else:
		Button_signal = null
	
func _on_Control_mouse_entered():
	material.shader = SHADER

func _on_Control_mouse_exited():
	material.shader = null


func _on_Control_pressed():
	var pressed = true

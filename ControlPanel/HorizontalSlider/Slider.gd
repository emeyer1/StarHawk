extends HSlider

const SHADER = preload('res://ControlPanel/OutlineSprite.shader')

export(String) var Signal


# Called when the node enters the scene tree for the first time.
func _ready():
	material = ShaderMaterial.new()
	$LeftLabel.text = str(Signal)


func _process(delta):
	pass


func _on_Control_mouse_entered():
	material.shader = SHADER


func _on_Control_mouse_exited():
	material.shader = null

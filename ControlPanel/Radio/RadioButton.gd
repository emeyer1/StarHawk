extends TextureButton

const SHADER = preload('res://ControlPanel/OutlineSprite.shader')
onready var Game = get_node('/root/StarFax')


signal radio

# Called when the node enters the scene tree for the first time.
func _ready():
	material = ShaderMaterial.new()
	#texture_normal = load('res://ControlPanel/PushButton/button_2test.png')
	#texture_pressed = load('res://ControlPanel/PushButton/button_2test_P.png')

	
func _on_Control_mouse_entered():
	material.shader = SHADER

func _on_Control_mouse_exited():
	material.shader = null

func _on_Radio_button_down():
	Game.ChangeScore(200)
	for i in get_node("/root/StarFax/Camera/Controls/Interactables").get_children():
		for ii in i.get_children():
			ii.get_node("Sprite").assign_vals()
			for j in ii.get_children():
				for k in j.get_children():
					k.play("Fade")

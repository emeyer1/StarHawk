extends Control

var sounds = []
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var animationdone = false
var audiodone = true
var val = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	if animationdone == true:
		stopSound()
		$AnimationPlayer/TextureButton.visible = true


func stopSound():
	$AudioStreamPlayer.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_TextureButton_button_up():
	get_tree().change_scene("res://ChooseShip/ChooseShip.tscn")

func _on_AnimationPlayer_animation_finished(anim_name):
	animationdone = true


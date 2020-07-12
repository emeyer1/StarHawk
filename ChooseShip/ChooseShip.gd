extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.play()
	get_tree().paused = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_button_up():
	get_tree().change_scene("res://Level1_1.tscn")


func _on_TextureButton2_button_up():
	get_tree().change_scene("res://Level1_2.tscn")


func _on_TextureButton3_button_up():
	get_tree().change_scene("res://Level1_3.tscn")

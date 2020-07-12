extends Control

onready var Game = get_node('/root/StarFax')

export var level_select_scene = "DEFAULT VALUE"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var once = false

#export var next_scene = "DEFAULT VALUE"
#export var score = 2000
# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = 'Better Luck Next Time'
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_toggled(button_pressed):
	Game.get_node('AudioStreamPlayer').stop()
	if !once:
		once = true
		restart()
		
func restart():
	yield(get_tree().create_timer(0.25), "timeout")
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_LevelSelect_toggled(button_pressed):
	Game.get_node('AudioStreamPlayer').stop()
	if !once:
		once = true
		get_tree().change_scene("res://ChooseShip/ChooseShip.tscn")

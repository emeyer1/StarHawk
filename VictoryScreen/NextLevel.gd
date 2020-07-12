extends Control

onready var Game = get_node('/root/StarFax')


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var once = false
export var next_scene = "DEFAULT VALUE"
export var score = 2000
# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = 'Total Haul: \n' +str(Game.Score)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_toggled(button_pressed):
	if !once:
		once = true
		change_scene()
	
func change_scene():
	yield(get_tree().create_timer(0.25), "timeout")
	get_tree().paused = false
	get_tree().change_scene(next_scene)

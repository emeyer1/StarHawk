extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var Signal = get_parent().Signal
	if Signal in ['Up','Left','Down','Right']:
		texture = load("res://ControlPanel/_Labels/arrow.png")
	if Signal == "Died":
		texture = load("res://ControlPanel/_Labels/died.png")
	if Signal == "Music":
		texture = load("res://ControlPanel/_Labels/music.png")
	if Signal == "Horn":
		texture = load("res://ControlPanel/_Labels/horn.png")
	
	match Signal:
		'Up':
			rotation_degrees = 0
		'Left':
			rotation_degrees = -90
		'Right':
			rotation_degrees = 90
		'Down':
			rotation_degrees = 180
			

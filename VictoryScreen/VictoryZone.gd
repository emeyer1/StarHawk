extends Spatial

export var next_scene = "DEFAULT VALUE"
var ship_type = preload("res://Scripts/Ship.gd")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	if body is ship_type:
		get_tree().paused = true
		var overlay = load("res://VictoryScreen/NextLevel.tscn").instance()
		overlay.next_scene = next_scene
		add_child(overlay)
		get_node("/root/").get_child(0).get_node("Camera/Controls").queue_free()
		

extends Camera

export var follow_distance = -10

func _ready():
	var overlay = load("res://DebugOverlay/DebugOverlay.tscn").instance()
	add_child(overlay)

func _physics_process(delta):
	translation.z = get_node("../Player").translation.z + follow_distance

	


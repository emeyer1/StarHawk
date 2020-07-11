extends Camera

export var follow_distance = -10
export var follow_speed = 2

var x_bounds = 3
var top_bound = 10
var bottom_bound = 5

func _ready():
	var overlay = load("res://DebugOverlay/DebugOverlay.tscn").instance()
	add_child(overlay)

func _physics_process(delta):
	transform.origin.z = get_node("../Player").transform.origin.z + follow_distance
	transform.origin.x = clamp(lerp(transform.origin.x, get_node("../Player").transform.origin.x, delta * follow_speed), -x_bounds, x_bounds)
	transform.origin.y = clamp(lerp(transform.origin.y, get_node("../Player").transform.origin.y + 7, delta * follow_speed), bottom_bound, top_bound)


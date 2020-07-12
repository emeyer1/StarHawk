extends Camera

export var follow_distance = -10
export var follow_speed = 2

var x_bounds = 17
var top_bound = 20
var bottom_bound = 8
var ship_class = preload("Ship.gd")

var last_obstructing_objects = []

func _ready():
	pass

func _physics_process(delta):
	transform.origin.z = get_node("../Player").transform.origin.z + follow_distance
	transform.origin.x = clamp(lerp(transform.origin.x, get_node("../Player").transform.origin.x, delta * follow_speed), -x_bounds, x_bounds)
	transform.origin.y = clamp(lerp(transform.origin.y, get_node("../Player").transform.origin.y + 5, delta * follow_speed), bottom_bound, top_bound)

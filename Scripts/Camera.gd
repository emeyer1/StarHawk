extends Camera

var follow_distance = -10

func _physics_process(delta):
	translation.z = get_node("../Player").translation.z + follow_distance

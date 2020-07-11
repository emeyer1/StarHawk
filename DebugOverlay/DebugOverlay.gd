extends CanvasLayer

var stats = []

func _ready():
	pass
	

func add_stat(stat_name, object, stat_ref, is_method):
	stats.append([stat_name,object,stat_ref,is_method])

func _process(delta):
	var label_text = ""
	
	var fps = Engine.get_frames_per_second()
	var peak_mem = OS.get_static_memory_peak_usage()
	var mem = OS.get_static_memory_usage()
	label_text += str("FPS: ", fps,"\n","Static Memory: ", String.humanize_size(mem), "\n","Peak: ", String.humanize_size(peak_mem))
	label_text += "\n"
	label_text += "--------------------"
	label_text += "\n"

	for stat in stats:
		var value = null
		if stat[1] and weakref(stat[1]).get_ref():
			if stat[3]:
				value = stat[1].call(stat[2])
			else:
				value = stat[1].get(stat[2])
		label_text += str(stat[0], ": ", value)
		label_text += "\n"
	
	$Label.text = label_text

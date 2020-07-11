extends Control


var score = 9999


# Called when the node enters the scene tree for the first time.
func _ready():
	update_score(score)
	
	

func update_score(score):
	$Text.text = '$' + str(score)
	
func update_energy(energy):
	$ProgressBar.value = energy
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

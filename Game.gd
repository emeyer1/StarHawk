extends Spatial


export(int) var Score
onready var ScoreDisplay = $Camera/Controls/WalkieTalkie/ScoreDisplay
onready var Radio = $Camera/Controls/Radio


# Called when the node enters the scene tree for the first time.
func _ready():
	ScoreDisplay.update_score(Score)
	$AudioStreamPlayer.play()


func ChangeScore(diff):
	Score = Score - diff
	ScoreDisplay.update_score(Score)
	if Score <=0:
		get_tree().paused = true
		var overlay = load("res://GameOver/GameOver.tscn").instance()
		add_child(overlay)
		get_node("/root/").get_child(0).get_node("Camera/Controls").queue_free()


func _on_Area_body_entered(body):
	print("Win")

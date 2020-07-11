extends Spatial


export(int) var Score
onready var ScoreDisplay = $Camera/Controls/ScoreDisplay
onready var Radio = $Camera/Controls/Radio


# Called when the node enters the scene tree for the first time.
func _ready():
	ScoreDisplay.update_score(Score)
	$AudioStreamPlayer.play()

func ChangeScore(diff):
	Score = Score - diff
	ScoreDisplay.update_score(Score)


func _on_Area_body_entered(body):
	print("Win")

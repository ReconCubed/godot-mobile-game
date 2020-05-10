extends RichTextLabel

export (int) var score = 0 setget setScore, getScore

func _ready():
	pass

func setScore(new_value):
	score = new_value
	self.bbcode_text = "[right]Score\n" + str(score) + "[/right]"

func getScore():
	return score

extends Node

var score = 0
@onready var score_text: Label = $ScoreText

func add_point():
	score += 1
	score_text.text = "Você coletou " + str(score) + " moedas"

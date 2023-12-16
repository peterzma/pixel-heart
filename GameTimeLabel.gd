extends Label

var game_time = 0.0
var start_game_msec = 0.0


@onready var game_time_label = %GameTimeLabel

func _ready():
	pass

func _process(delta):
	game_time = Time.get_ticks_msec() - start_game_msec
	game_time_label.text = str(game_time / 1000.0)

extends CenterContainer

@onready var start_game_button = %StartGameButton

func _ready():
	RenderingServer.set_default_clear_color(Color.BLACK)
	start_game_button.grab_focus()

func _on_start_game_button_pressed():
	SoundPlayer.play_sound(SoundPlayer.Select)
	LevelTransition.fade_to_black()
	get_tree().change_scene_to_file("res://Levels/level_0.tscn")
	LevelTransition.fade_from_black()

func _on_quit_button_pressed():
	SoundPlayer.play_sound(SoundPlayer.Select)
	get_tree().quit()

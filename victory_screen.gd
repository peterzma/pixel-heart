extends CenterContainer

@onready var menu_button = %MenuButton

func _ready():
	LevelTransition.fade_from_black()
	menu_button.grab_focus()
	SoundPlayer.play_sound(SoundPlayer.Victory)

func _on_button_pressed():
	SoundPlayer.play_sound(SoundPlayer.Select)
	LevelTransition.fade_from_black()
	get_tree().change_scene_to_file("res://start_menu.tscn")

extends Node

const Hurt = preload("res://Sounds/hurt3.wav")
const Jump = preload("res://Sounds/jump2.wav")
const AirJump = preload("res://Sounds/airjump2.wav")
const WallJump = preload("res://Sounds/walljump.wav")
const Heart = preload("res://Sounds/heart3.wav")
const Select = preload("res://Sounds/select 6.mp3")
const Victory = preload("res://Sounds/victory 2.mp3")

@onready var audioPlayers: = $AudioPlayers

func play_sound(sound):
	for audioStreamPlayer in audioPlayers.get_children():
		if not audioStreamPlayer.playing:
			audioStreamPlayer.stream = sound
			audioStreamPlayer.play()
			break

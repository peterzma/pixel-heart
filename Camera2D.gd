extends Camera2D


var camera_speed = 200  # Adjust the speed as needed
var min_y = 0  # Minimum Y position to which the camera can move
var max_y = 45  # Maximum Y position to which the camera can move (matches the viewport height)
var original_position: Vector2  # Store the camera's original position

func _ready():
	original_position = position  # Store the original camera position when the scene loads

func _process(delta):
	if Input.is_action_pressed("move_camera_down"):
		var new_position = position + Vector2(0, camera_speed * delta)
		new_position.y = clamp(new_position.y, min_y, max_y)  # Clamp the Y position within the limits
		position = new_position
	else:
		position = original_position  # Reset the camera to its original position when the key is released

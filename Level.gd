extends Label

var level_name = "Level 1"  # Set the initial level name

func load_level(level_number):
	# Logic to load the level goes here
	# After loading, update the level_name variable
	level_name = "Level " + str(level_number)

func _process(delta):
	var World = get_tree().root.get_node("world")
	var canvas_layer = World.get_node("CanvasLayer")
	var label_node = canvas_layer.get_node("Label")

	if label_node:
		label_node.text = "Level Name: " + level_name
	else:
		print("Label node not found!")

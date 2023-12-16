extends Node

var levelNameLabel: Label
var currentLevelName: String = "1"  # Initialize currentLevelName with a default value.

# Called when the node enters the scene tree for the first time.
func _ready():
	# Get a reference to the Label node inside the CanvasLayer.
	levelNameLabel = $Label  # Adjust the path to your Label node.

	# Set the initial level name.
	updateLevelName()

	# Connect the scene_changed signal to our _on_scene_changed function.
	get_tree().connect("scene_changed", self, "_on_scene_changed")

func updateLevelName():
	# Replace this with your logic to get the current level name.
	# In this example, we're just incrementing the current level name.
	currentLevelName = str(currentLevelName.to_int() + 1)

	# Update the Label node's text property with the current level name.
	levelNameLabel.text = "Level: " + currentLevelName

# Call this function whenever you want to update the level name.
func setLevelName(newLevelName):
	currentLevelName = newLevelName
	updateLevelName()

# This function will be called whenever the scene changes.
func _on_scene_changed():
	# Call updateLevelName() to update the level name whenever the scene changes.
	updateLevelName()

extends Node2D


func _ready():
	GameManager.tilemap = $Floor


func place_object(obj):
	$Node2D/YSort.add_child(obj)

extends Node

signal item_selected


var tilemap

func _ready():
	connect("item_selected", self, "item_select")



func item_select(texture: Texture):
	var item = load("res://actors/Item.tscn").instance()
	item.texture = texture
	
	if texture.get_size().y > 16:
		item.offset.y = -16
	
	
	get_tree().call_group("OfficeGroup", "place_object", item)

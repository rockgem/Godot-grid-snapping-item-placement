extends Panel


export(String) var item_name: String

var texture_inside: Texture = null


func _ready():
	texture_inside = load("res://assets/objects/%s.png" % item_name)
	$TextureRect.texture = texture_inside


func _on_Slot_gui_input(event):
	if event is InputEventMouseButton && event.pressed && event.button_index == BUTTON_LEFT:
		GameManager.emit_signal("item_selected", texture_inside)

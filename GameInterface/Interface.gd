extends Control

signal health_changed(health)
#signal oxygen_changed(oxygen)

func _ready():
	var health_node = null
	for node in get_tree().get_nodes_in_group("actors"):
		if node.name =="player":
			health_node = node.get_node("Health")
			$Bars/LifeBar.initialize(health_node.max_health)
			break
func _on_Health_health_changed(health):
	emit_signal("health_changed", health)

#func _on_Oxygen_oxygen_changed(oxegen):
#	emit_signal("oxygen_changed", oxygen)
	
	
#	var health_node = null
#	for node in get_tree().get_nodes_in_group("actors"):
#		if node.name == "player":
#			health_node = node.get_node("Health")
#			break
#	$Bars/LifeBar.initialize(health_node.maximum_health)		
	
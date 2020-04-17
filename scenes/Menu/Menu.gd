extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0
func _ready():
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	$RedGenerator.connect("button_down",self,"count_new_instance")
	$VioletGenerator.connect("button_down",self,"count_new_instance")
	$Reset.connect("button_down",self,"delete")
	pass
	


func _on_RedGenerator_button_down():
	pass 


func _on_VioletGenerator_button_down():
	pass 
	
func count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	pass

func delete():
	instancesCount = 0
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	pass

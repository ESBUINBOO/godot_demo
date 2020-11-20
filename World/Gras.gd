extends Node2D

const GrasEffect = preload("res://Effects/GrasEffect.tscn")


func create_gras_effect():
	var grasEffect = GrasEffect.instance()
	get_parent().add_child(grasEffect)
	grasEffect.global_position = global_position


func _on_Hurtbox_area_entered(area):
	create_gras_effect()
	queue_free()

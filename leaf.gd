extends Node2D

func _process(delta):
	var canvas = get_canvas_transform()
	var top_left = -canvas.origin / canvas.get_scale()
	var size = get_viewport_rect().size / canvas.get_scale()

	$Particles2D.global_position.x = top_left.x + size.x/2 
	$Particles2D.global_position.y = top_left.y - 50
	$Particles2D.get_process_material().set_emission_box_extents(Vector3(size.x,50,1))

extends Node2D


var vectorObjects = []
const offset  = 10

func _draw():
	for vectorObject in vectorObjects:
		var importantVectors = []
		for vector in vectorObject:
			var offsetVector = (vector - get_global_mouse_position()).normalized()* offset
			importantVectors.append(vector + offsetVector)
			importantVectors.append((vector-get_global_mouse_position()).normalized()*1600+vector)
		var important = Geometry.convex_hull_2d(PoolVector2Array(importantVectors))
		draw_colored_polygon(important, Color.black)

func _ready():
	var walls = get_tree().get_nodes_in_group("walls")
	for wall in walls:
		vectorObjects.append(wall.getPool())

func _process(delta):
	if Input.is_action_pressed("mouseClick"):
		update()

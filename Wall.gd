extends Node2D


func getPool():
	var vecsCurr = $Polygon2D.polygon
	var vecs = []
	for vec in vecsCurr:
		vecs.append(global_position + vec.rotated(global_rotation))
	return vecs

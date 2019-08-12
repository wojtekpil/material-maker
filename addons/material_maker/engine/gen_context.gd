extends Object
class_name MMGenContext

var variants : Dictionary = {}

func has_variant(generator):
	return variants.has(generator)

func get_variant(generator, uv):
	var rv = -1
	if variants.has(generator):
		rv = variants[generator].find(uv)
		if rv == -1:
			variants[generator].push(uv)
	else:
		variants[generator] = [uv]
	return rv

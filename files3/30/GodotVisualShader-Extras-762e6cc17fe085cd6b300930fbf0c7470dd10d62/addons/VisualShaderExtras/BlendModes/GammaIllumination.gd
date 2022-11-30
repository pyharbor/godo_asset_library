tool
extends VisualShaderNodeCustom
class_name VisualShaderNodeGammaIllumination

func _get_name():
	return "BlendGammaIllumination"

func _get_category():
	return "VisualShaderExtras"

func _get_subcategory():
	return "BlendModes"

func _get_description():
	return "Gamma Illumination Blending Mode"

func _get_return_icon_type():
	return VisualShaderNode.PORT_TYPE_VECTOR

func _get_input_port_count():
	return 2

func _get_input_port_name(port):
	match port:
		0:
			return "top layer"
		1:
			return "bottom layer"

func _get_input_port_type(port):
	match port:
		0:
			return VisualShaderNode.PORT_TYPE_VECTOR
		1:
			return VisualShaderNode.PORT_TYPE_VECTOR

func _get_output_port_count():
	return 1

func _get_output_port_name(port: int) -> String:
	return "output"

func _get_output_port_type(port):
	return VisualShaderNode.PORT_TYPE_VECTOR

func _get_global_code(mode):
	return """
		vec3 blend_gamma_illumination(vec3 __top_col, vec3 __bot_col)
		{
			return (1.0 - pow(__bot_col, (1.0 / __top_col)));
		}
	"""

func _get_code(input_vars, output_vars, mode, type):
	
	return "%s.rgb = blend_gamma_illumination(%s.rgb, %s.rgb);" % [output_vars[0], input_vars[0], input_vars[1]]

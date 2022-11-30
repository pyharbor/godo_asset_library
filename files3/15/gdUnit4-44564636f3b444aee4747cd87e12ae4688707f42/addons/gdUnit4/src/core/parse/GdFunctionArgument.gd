class_name GdFunctionArgument
extends RefCounted

var _name: String
var _type: int
var _default_value :Variant

const UNDEFINED :Variant = "<-NO_ARG->"
const ARG_PARAMETERIZED_TEST := "test_parameters"

func _init(name :String, type :int = TYPE_MAX, default_value :Variant = UNDEFINED):
	_name = name
	_type = type
	_default_value = default_value

func name() -> String:
	return _name

func default() -> Variant:
	return GdObjects.convert(_default_value, _type)

func value_as_string() -> String:
	if has_default():
		return str(_default_value)
	return ""

func type() -> int:
	return _type

func has_default() -> bool:
	return _default_value != UNDEFINED

func is_parameter_set() -> bool:
	return _name == ARG_PARAMETERIZED_TEST

static func get_parameter_set(parameters :Array) -> GdFunctionArgument:
	for current in parameters:
		if current != null and current.is_parameter_set():
			return current
	return null

func _to_string() -> String:
	var s = _name
	if _type != TYPE_MAX:
		s += ":" + GdObjects.type_as_string(_type)
	if _default_value != UNDEFINED:
		s += "=" + str(_default_value)
	return s
